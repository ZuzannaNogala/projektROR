#' Information about bank clients and status of their loan payoff.
#'
#' A dataset containing status of loan payoff from one month and information 
#' such total income per year or education type, to use as potential predictors
#' in logistic regression.
#'
#' @format A data frame with 20762 rows and 19 variables:
#' \describe{
#'   \item{id}{Client's number}
#'   \item{code_gender}{Gender of a client, F - female, M - male}
#'   \item{flag_own_car}{Is there a car}
#'   \item{flag_own_realty}{Is there a property}
#'   \item{cnt_children}{Number of children}
#'   \item{amt_income_total}{Annual income}
#'   \item{name_income_type}{Income category}
#'   \item{name_education_type}{Education level}
#'   \item{name_family_status}{Marital status}
#'   \item{name_housing_type}{Way of living}
#'   \item{days_employed}{Number of days of emplyment, negative - person unemployed}
#'   \item{flag_mobil}{Is there a mobile phone}
#'   \item{flag_work_phone}{Is there a work phone}
#'   \item{flag_phone}{Is there a phone}
#'   \item{flag_email}{Is there an email}
#'   \item{occupation_type}{Occupation}
#'   \item{cnt_fam_members}{Family size}
#'   \item{status}{1 - paid off, 0 - not}
#'   \item{age}{Age of a client}
#' }
#' @source \url{https://www.kaggle.com/datasets/rikdifos/credit-card-approval-prediction?select=credit_record.csv}
"creditData"