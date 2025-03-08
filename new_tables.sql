-- Creating the Customer Info table
CREATE TABLE customer_info (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    Geography VARCHAR(50),
    SubscriptionPlan VARCHAR(20)
);

-- Creating the Support Tickets table
CREATE TABLE support_tickets (
    CustomerID INT,
    CustomerSupportTickets INT,
    IssueResolutionTime INT,  -- Hours
    ComplaintSeverity VARCHAR(10),
    RefundRequests INT,
    FOREIGN KEY (CustomerID) REFERENCES customer_info(CustomerID)
);

-- Creating the Satisfaction Scores table
CREATE TABLE satisfaction_scores (
    CustomerID INT,
    NetPromoterScore INT,
    SatisfactionSurveyScore INT,
    CustomerLoyaltyProgram VARCHAR(5),
    RewardPointsBalance INT,
    FOREIGN KEY (CustomerID) REFERENCES customer_info(CustomerID)
);

-- Creating the Digital Engagement table
CREATE TABLE digital_engagement (
    CustomerID INT,
    MobileAppUsage INT,
    WebPortalUsage INT,
    AvgSessionDuration INT,  -- Minutes
    DeviceType VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES customer_info(CustomerID)
);

-- Creating the Payment History table
CREATE TABLE payment_history (
    CustomerID INT,
    AutoRenewalEnabled VARCHAR(5),
    PaymentMethod VARCHAR(20),
    PaymentFailures INT,
    FOREIGN KEY (CustomerID) REFERENCES customer_info(CustomerID)
);

-- Creating the Competitor Analysis table
CREATE TABLE competitor_analysis (
    CustomerID INT,
    CompetitorWebsiteVisits INT,
    ChurnedFriends INT,
    MarketSentimentScore VARCHAR(10),
    FOREIGN KEY (CustomerID) REFERENCES customer_info(CustomerID)
);
