package entity;

public class Account {
    private String name;
    private int periodCalculation;
    private int sumOfRealizationProducts;
    private int sumOfUnrealizableProducts;
    private boolean placeOfWork;
    private boolean privileges;
    private boolean single;
    private int amountOfChildren;
    private int amountOfChildrenDisabled;
    private int amountOfDependents;
    private int costOfInsurance;
    private int costOfStudy;
    private int costOfHousing;
    private int costOfBusinessActivities;
    private int tax;

    public Account(String name, int periodCalculation, int sumOfRealizationProducts,
                   int sumOfUnrealizableProducts, boolean placeOfWork, boolean privileges,
                   boolean single, int amountOfChildren, int amountOfChildrenDisabled,
                   int amountOfDependents, int costOfInsurance, int costOfStudy, int costOfHousing,
                   int costOfBusinessActivities)
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
        this.tax=0;
    }

    public String getName() {
        return name;
    }

    public int getPeriodCalculation() {
        return periodCalculation;
    }

    public int getSumOfRealizationProducts() {
        return sumOfRealizationProducts;
    }

    public int getSumOfUnrealizableProducts() {
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

    public int getCostOfInsurance() {
        return costOfInsurance;
    }

    public int getCostOfStudy() {
        return costOfStudy;
    }

    public int getCostOfHousing() {
        return costOfHousing;
    }

    public int getCostOfBusinessActivities() {
        return costOfBusinessActivities;
    }

    public int getTax() {
        return tax;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPeriodCalculation(int periodCalculation) {
        this.periodCalculation = periodCalculation;
    }

    public void setSumOfRealizationProducts(int sumOfRealizationProducts) {
        this.sumOfRealizationProducts = sumOfRealizationProducts;
    }

    public void setSumOfUnrealizableProducts(int sumOfUnrealizableProducts) {
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

    public void setCostOfInsurance(int costOfInsurance) {
        this.costOfInsurance = costOfInsurance;
    }

    public void setCostOfStudy(int costOfStudy) {
        this.costOfStudy = costOfStudy;
    }

    public void setCostOfHousing(int costOfHousing) {
        this.costOfHousing = costOfHousing;
    }

    public void setCostOfBusinessActivities(int costOfBusinessActivities) {
        this.costOfBusinessActivities = costOfBusinessActivities;
    }

    public void setTax(int tax) {
        this.tax = tax;
    }
}
