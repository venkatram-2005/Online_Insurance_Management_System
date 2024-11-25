package Objects;

public class InsurancePlan {
    private int planId;
    private String planCategory;
    private String planName;
    private String planDesc;
    private String planTier;
    private String ageGroup;
    private String planForGender;
    private double premium;
    private double coverageAmount;

    public InsurancePlan(int planId, String planCategory, String planName, String planDesc, 
                         String planTier, String ageGroup, String planForGender, 
                         double premium, double coverageAmount) {
        this.planId = planId;
        this.planCategory = planCategory;
        this.planName = planName;
        this.planDesc = planDesc;
        this.planTier = planTier;
        this.ageGroup = ageGroup;
        this.planForGender = planForGender;
        this.premium = premium;
        this.coverageAmount = coverageAmount;
    }

    public int getPlanId() {
        return planId;
    }

    public String getPlanCategory() {
        return planCategory;
    }

    public String getPlanName() {
        return planName;
    }

    public String getPlanDesc() {
        return planDesc;
    }

    public String getPlanTier() {
        return planTier;
    }

    public String getAgeGroup() {
        return ageGroup;
    }

    public String getPlanForGender() {
        return planForGender;
    }

    public double getPremium() {
        return premium;
    }

    public double getCoverageAmount() {
        return coverageAmount;
    }
}

