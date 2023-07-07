env = "stage-us-east-1"
email_notification = {
  rbs       = "GCEDevops@tenerity.com"
  cxrewards = "GCEDevops@tenerity.com,rohit.gupta@tenerity.com,vijay.nimkarde@tenerity.com"
  connect   = "GCEDevops@tenerity.com,nikhil.tidke@tenerity.com"
  shared    = "GCEDevops@tenerity.com"
  apg       = "GCEDevops@tenerity.com"
  mcc       = "GCEDevops@tenerity.com,swapnil.jadhav@tenerity.com,vinita.nayama@tenerity.com"
  veryme    = "GCEDevops@tenerity.com,rohit.gupta@tenerity.com,vijay.nimkarde@tenerity.com"
}

platforms = {
  shared = {
    nextgen-keycloak = {
      url        = "https://nextgen-keycloak.int.stage-affinionservices.com/auth/"
      frequency  = 5
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    gce-brms-ng-service = {
      url        = "https://gce-brms-ng-service.int.stage-affinionservices.com/actuator/health"
      frequency  = 5
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
  }
  apg = {
    apg-payments-service = {
      url        = "https://apg-payments-service.int.stage-affinionservices.com/actuator/health"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    apg-billing-profile-service = {
      url        = "https://apg-billing-profile-service.int.stage-affinionservices.com/actuator/health"
      frequency  = 1
      status     = "DISABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    apg-mandate-service = {
      url        = "https://apg-mandate-service.int.stage-affinionservices.com/actuator/health"
      frequency  = 1
      status     = "DISABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    apg-data-integrity-monitor = {
      url        = "https://apg-data-integrity-monitor.int.stage-affinionservices.com/actuator/health"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    apg-monitor = {
      url        = "https://apg-monitor.int.stage-affinionservices.com/actuator/health"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    iban-embedded = {
      url        = "https://iban-embedded.int.stage-affinionservices.com/IbanEmbedded/"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
  }
  connect = {
    cxrewards-mp-mobile-app-bff = {
      url        = "https://ng-api.stage-affinionservices.com/cxrewards/mp-mobile-bff/actuator/health"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["AWS_EU_WEST_1"]
    }
    magento = {
      url        = "https://magento.int.stage-affinionservices.com/healthchecktest"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    cxrewards-mp-transactions = {
      url        = "https://cxrewards-mp-transactions.int.stage-affinionservices.com/actuator/health"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    cxrewards-mp-redemption-service = {
      url        = "https://cxrewards-mp-redemption-service.int.stage-affinionservices.com/actuator/health"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    cxrewards-mp-member-offers = {
      url        = "https://cxrewards-mp-member-offers.int.stage-affinionservices.com/actuator/health"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    cxrewards-mp-magento-connector = {
      url        = "https://cxrewards-mp-magento-connector.int.stage-affinionservices.com/actuator/health"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    marketplace-dna-connector = {
      url        = "https://marketplace-connector.int.stage-affinionservices.com/actuator/health"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
  }
  rbs = {
    ng-auth = {
      url        = "https://ng-auth.int.stage-affinionservices.com/actuator/health"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    ng-member = {
      url        = "https://ng-member.int.stage-affinionservices.com/actuator/health"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    ng-hub = {
      url        = "https://ng-hub.int.stage-affinionservices.com/actuator/health"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    ng-benefits = {
      url        = "https://ng-benefits.int.stage-affinionservices.com/actuator/health"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    ng-membership = {
      url        = "https://ng-membership.int.stage-affinionservices.com/actuator/health"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    ng-content = {
      url        = "https://ng-content.int.stage-affinionservices.com/actuator/health"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    ng-config-server = {
      url        = "https://ng-config-server.int.stage-affinionservices.com/actuator/health"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    ng-order = {
      url        = "https://ng-order.int.stage-affinionservices.com/actuator/health"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    ng-reception-gateway = {
      url        = "https://ng-reception-gateway.int.stage-affinionservices.com/actuator/health"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    ng-communication = {
      url        = "https://ng-communication.int.stage-affinionservices.com/actuator/health"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    ng-workflow-initiator = {
      url        = "https://ng-workflow-initiator.int.stage-affinionservices.com/actuator/health"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    ng-events = {
      url        = "https://ng-events.int.stage-affinionservices.com/actuator/health"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    ng-asset = {
      url        = "https://ng-asset.int.stage-affinionservices.com/actuator/health"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    ng-service-request = {
      url        = "https://ng-service-request.int.stage-affinionservices.com/actuator/health"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    ng-engage = {
      url        = "https://ng-engage.int.stage-affinionservices.com/actuator/health"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    ng-device-insurance-benefit = {
      url        = "https://ng-device-insurance-benefit.int.stage-affinionservices.com/health"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    ng-gce-platform-data-monitor = {
      url        = "https://ng-gce-platform-data-monitor.int.stage-affinionservices.com/actuator/health"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    ng-payment-vehicle = {
      url        = "https://ng-payment-vehicle.int.stage-affinionservices.com/actuator/health"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    ng-tenants = {
      url        = "https://ng-tenants.int.stage-affinionservices.com/actuator/health"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
  }
  cxrewards = {
    cxrewards-cms = {
      url        = "https://cxrewards-cms.int.stage-affinionservices.com/gui"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    cxrewards-conf = {
      url        = "https://cxrewards-conf.int.stage-affinionservices.com/actuator/health"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    cxrewards-ffs = {
      url        = "https://cxrewards-ffs.int.stage-affinionservices.com/"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    cxrewards-customer-offers = {
      url        = "https://ng-api.stage-affinionservices.com/cxrewards/customer-offers/actuator/health"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["AWS_EU_WEST_1"]
    }
    cxrewards-mobile-bff = {
      url        = "https://ng-api.stage-affinionservices.com/cxrewards/mobile-bff/actuator/health"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["AWS_EU_WEST_1"]
    }
    cxrewards-redemption-service = {
      url        = "https://cxrewards-redemption-service.int.stage-affinionservices.com/actuator/health"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    cxrewards-di = {
      url        = "https://cxrewards-di.int.stage-affinionservices.com/actuator/health"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    cxinteract-mobile-app = {
      url        = "https://cxinteract-mobile-app.stage-affinionservices.com/version.txt"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["AWS_EU_WEST_1"]
    }
  }
  mcc = {
    cxrewards-mcc-points-service = {
      url        = "https://cxrewards-mcc-points-service.int.stage-affinionservices.com/health-check"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    cxrewards-mcc-preferences-admin-api = {
      url        = "https://cxrewards-mcc-preferences-admin-api.int.stage-affinionservices.com/health-check"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    cxrewards-mcc-preferences-customer-api = {
      url        = "https://cxrewards-mcc-preferences-customer-api.int.stage-affinionservices.com/health-check"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    cxrewards-mcc-rewards-ui-bff-api = {
      url        = "https://cxrewards-mcc-rewards-ui-bff-api.int.stage-affinionservices.com/health-check"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    mcc-api = {
      url        = "https://mcc-api.stage-affinionservices.com/cxrewards/transactions/health-check"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["AWS_EU_WEST_1"]
    }
    cxrewards-mcc-transactions-ingestion = {
      url        = "https://cxrewards-mcc-transactions-ingestion.int.stage-affinionservices.com/health-check"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    cxrewards-mcc-transactions-persistence = {
      url        = "https://cxrewards-mcc-transactions-persistence.int.stage-affinionservices.com/health-check"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    cxrewards-mcc-cds = {
      url        = "https://cxrewards-mcc-cds.int.stage-affinionservices.com/gui"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
    cxrewards-mcc-oidc = {
      url        = "https://cxrewards-mcc-oidc.int.stage-affinionservices.com/version.txt"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["3312903-stage_eks_minion-E55"]
    }
  }
  veryme = {
    veryme-cms-gui = {
      url        = "https://ng-api.stage-affinionservices.com/veryme/cms/gui"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["AWS_EU_WEST_1"]
    }
    veryme-ffs = {
      url        = "https://ng-api.stage-affinionservices.com/veryme/ffs/health-check"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["AWS_EU_WEST_1"]
    }
    veryme-cms = {
      url        = "https://veryme-cms.stage-affinionservices.com/"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["AWS_EU_WEST_1"]
    }
    veryme-mobile-app = {
      url        = "https://veryme-mobile-app.stage-affinionservices.com/version.txt"
      frequency  = 1
      status     = "ENABLED"
      verify_ssl = true
      locations  = ["AWS_EU_WEST_1"]
    }
  }
}