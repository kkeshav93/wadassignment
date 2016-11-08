using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for StudentInfor
/// </summary>
public class StudentInfor
{
    //
    // TODO: Add constructor logic here
    //
    public String userName
    {
        get { return userName; }
        set { userName = value; }
    }

    public String password
    {
        get { return password; }
        set { password = value; }
    }
    public bool certifiedchecked
    {
        get { return certifiedchecked; }
        set { certifiedchecked = value; }
    }
    public String socialSecurityNumber
    {
        get { return socialSecurityNumber; }
        set { socialSecurityNumber = value; }
    }
    public String fullName
    {
        get { return fullName; }
        set { fullName = value; }
    }
    public String dateOfBirth
    {
        get { return dateOfBirth; }
        set { dateOfBirth = value; }
    }
    public String address
    {
        get { return address; }
        set { address = value; }
    }

    public String emailAddress
    {
        get
        {
            return emailAddress;
        }

        set
        {
            emailAddress = value;
        }
    }

    public String securityQuestion
    {
        get
        {
            return securityQuestion;
        }

        set
        {
            securityQuestion = value;
        }
    }

    public String securityQuestionAnswer
    {
        get
        {
            return securityQuestionAnswer;
        }

        set
        {
            securityQuestionAnswer = value;
        }
    }

    public int accountNumber
    {
        get
        {
            return accountNumber;
        }

        set
        {
            accountNumber = value;
        }
    }

    public String lastUpdatedDate
    {
        get
        {
            return lastUpdatedDate;
        }

        set
        {
            lastUpdatedDate = value;
        }
    }

    public float currentBalance
    {
        get
        {
            return currentBalance;
        }

        set
        {
            currentBalance = value;
        }
    }

    public float regularMonthlyPaymentAmount
    {
        get
        {
            return regularMonthlyPaymentAmount;
        }

        set
        {
            regularMonthlyPaymentAmount = value;
        }
    }

    public float amountSatisfiedByExtraPayment
    {
        get
        {
            return amountSatisfiedByExtraPayment;
        }

        set
        {
            amountSatisfiedByExtraPayment = value;
        }
    }

    public float pastDueAmount
    {
        get
        {
            return pastDueAmount;
        }

        set
        {
            pastDueAmount = value;
        }
    }

    public float currentAmountDue
    {
        get
        {
            return currentAmountDue;
        }

        set
        {
            currentAmountDue = value;
        }
    }

    public String currentStatementDueDate
    {
        get
        {
            return currentStatementDueDate;
        }

        set
        {
            currentStatementDueDate = value;
        }
    }
}
