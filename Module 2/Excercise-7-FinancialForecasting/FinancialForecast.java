public class FinancialForecast {

    private double initialValue;
    private double growthRate;

    public FinancialForecast(double initialValue, double growthRate) {
        this.initialValue = initialValue;
        this.growthRate = growthRate;
    }

    public double getInitialValue() {
        return initialValue;
    }

    public double getGrowthRate() {
        return growthRate;
    }
}