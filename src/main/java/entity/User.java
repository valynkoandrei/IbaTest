package entity;

import javax.persistence.*;

@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue()
    @Column(name="idUsers")
    private Long id = null;
    @Column(name = "name", length = 45)
    private String name;
    @Column(name = "periodCalculation")
    private int periodCalculation;
    @Column(name = "sumOfRealizationProducts")
    private long sumOfRealizationProducts;
    @Column(name = "sumOfUnrealizableProducts")
    private long sumOfUnrealizableProducts;
    @Column(name = "placeOfWork")
    private boolean placeOfWork;
    @Column(name = "privileges")
    private boolean privileges;
    @Column(name = "single")
    private boolean single;
    @Column(name = "amountOfChildren")
    private int amountOfChildren;
    @Column(name = "amountOfChildrenDisabled")
    private int amountOfChildrenDisabled;
    @Column(name = "amountOfDependents")
    private int amountOfDependents;
    @Column(name = "costOfInsurance")
    private long costOfInsurance;
    @Column(name = "costOfStudy")
    private long costOfStudy;
    @Column(name = "costOfHousing")
    private long costOfHousing;
    @Column(name = "costOfBusinessActivities")
    private long costOfBusinessActivities;
    @Column(name = "tax")
    private double tax;
    @Column(name = "stepOne")
    private long stepOne = 0;
    @Column(name = "stepTwo")
    private long stepTwo = 0;
    @Column(name = "stepThree")
    private long stepThree = 0;
    @Column(name = "stepFour")
    private long stepFour = 0;
    @Column(name = "stepFive")
    private long stepFive = 0;
    @Column(name = "stepSix")
    private long stepSix = 0;


    public User(String name, int periodCalculation, long sumOfRealizationProducts,
                long sumOfUnrealizableProducts, boolean placeOfWork, boolean privileges,
                boolean single, int amountOfChildren, int amountOfChildrenDisabled,
                int amountOfDependents, long costOfInsurance, long costOfStudy, long costOfHousing,
                long costOfBusinessActivities)
    {
        this.name = name;
        this.periodCalculation = periodCalculation;
        this.sumOfRealizationProducts = sumOfRealizationProducts;
        this.sumOfUnrealizableProducts = sumOfUnrealizableProducts;
        this.placeOfWork = placeOfWork;
        this.privileges = privileges;
        this.single = single;
        this.amountOfChildren = amountOfChildren;
        this.amountOfChildrenDisabled = amountOfChildrenDisabled;
        this.amountOfDependents = amountOfDependents;
        this.costOfInsurance = costOfInsurance;
        this.costOfStudy = costOfStudy;
        this.costOfHousing = costOfHousing;
        this.costOfBusinessActivities = costOfBusinessActivities;
        setTax();
    }

    public User() {
    }

    public String getName() {
        return name;
    }

    public int getPeriodCalculation() {
        return periodCalculation;
    }

    public long getSumOfRealizationProducts() {
        return sumOfRealizationProducts;
    }

    public long getSumOfUnrealizableProducts() {
        return sumOfUnrealizableProducts;
    }

    public boolean isPlaceOfWork() {
        return placeOfWork;
    }

    public boolean isPrivileges() {
        return privileges;
    }

    public boolean isSingle() {
        return single;
    }

    public int getAmountOfChildren() {
        return amountOfChildren;
    }

    public int getAmountOfChildrenDisabled() {
        return amountOfChildrenDisabled;
    }

    public int getAmountOfDependents() {
        return amountOfDependents;
    }

    public long getCostOfInsurance() {
        return costOfInsurance;
    }

    public long getCostOfStudy() {
        return costOfStudy;
    }

    public long getCostOfHousing() {
        return costOfHousing;
    }

    public long getCostOfBusinessActivities() {
        return costOfBusinessActivities;
    }

    public double getTax() {
        return tax;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPeriodCalculation(int periodCalculation) {
        this.periodCalculation = periodCalculation;
    }

    public void setSumOfRealizationProducts(long sumOfRealizationProducts) {
        this.sumOfRealizationProducts = sumOfRealizationProducts;
    }

    public void setSumOfUnrealizableProducts(long sumOfUnrealizableProducts) {
        this.sumOfUnrealizableProducts = sumOfUnrealizableProducts;
    }

    public void setPlaceOfWork(boolean placeOfWork) {
        this.placeOfWork = placeOfWork;
    }

    public void setPrivileges(boolean privileges) {
        this.privileges = privileges;
    }

    public void setSingle(boolean single) {
        this.single = single;
    }

    public void setAmountOfChildren(int amountOfChildren) {
        this.amountOfChildren = amountOfChildren;
    }

    public void setAmountOfChildrenDisabled(int amountOfChildrenDisabled) {
        this.amountOfChildrenDisabled = amountOfChildrenDisabled;
    }

    public void setAmountOfDependents(int amountOfDependents) {
        this.amountOfDependents = amountOfDependents;
    }

    public void setCostOfInsurance(long costOfInsurance) {
        this.costOfInsurance = costOfInsurance;
    }

    public void setCostOfStudy(long costOfStudy) {
        this.costOfStudy = costOfStudy;
    }

    public void setCostOfHousing(long costOfHousing) {
        this.costOfHousing = costOfHousing;
    }

    public void setCostOfBusinessActivities(long costOfBusinessActivities) {
        this.costOfBusinessActivities = costOfBusinessActivities;
    }

    public void setTax() {
        if (placeOfWork) tax=(sumOfRealizationProducts+sumOfUnrealizableProducts - costOfBusinessActivities) * 0.16;
        else {
            stepOne = sumOfRealizationProducts + sumOfUnrealizableProducts;
            if (stepOne <= 15_020_000) stepTwo = stepOne - (830_000 * periodCalculation);
            else stepTwo = stepOne;
            if (stepTwo < 0) stepTwo = 0;
            if (privileges) stepThree = stepTwo - (1_170_000 * periodCalculation);
            else stepThree = stepTwo;
            if (stepThree < 0) stepThree = 0;
            if (amountOfDependents > 0) {
                if (single && amountOfChildren > 0)
                    stepFour = stepThree - periodCalculation * 460000 * (amountOfChildren + amountOfDependents);
                else if (amountOfChildren == 1) if (amountOfChildrenDisabled == 0)
                    stepFour = stepThree - periodCalculation * 240000 * (amountOfChildren + amountOfDependents);
                else if (amountOfChildrenDisabled == 1)
                    stepFour = stepThree - periodCalculation * ((240000 * amountOfDependents) + (460000 * amountOfChildren));
                else ;
                else if (amountOfChildren > 1)
                    stepFour = stepThree - periodCalculation * 46000 * (amountOfChildren + amountOfDependents);
            }
            if (stepFour < 0) stepFour = 0;
            if (costOfInsurance <= 16000000) stepFive = stepFour - costOfInsurance;
            else stepFive = stepFour - 16000000;
            if (stepFive < 0) stepFive = 0;
            stepSix = stepFive - (costOfStudy + costOfHousing + costOfBusinessActivities);
            if (stepSix < 0) stepSix = 0;

            tax = stepSix * 0.16;
        }
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }
}
