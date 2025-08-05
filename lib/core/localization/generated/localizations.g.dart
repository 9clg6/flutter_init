// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters, constant_identifier_names

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> _fr = {
  "passwordNotOK": "Le mot de passe ne respecte pas les critères requis.",
  "passwordNotMatch": "Les mots de passe ne correspondent pas.",
  "emailNotValid": "Format d’adresse email invalide",
  "fieldRequired": "Ce champ est requis",
  "welcome": "Bienvenue",
  "connectToAccess": "Connectez-vous pour accéder à votre espace",
  "email": "Adresse email",
  "password": "Mot de passe",
  "forgotPassword": "Mot de passe oublié ?",
  "forgetPassword": "Mot de passe oublié",
  "notClient": "Pas encore client ?",
  "login": "Connexion",
  "searchInProgress": "Recherche en cours",
  "needHelp": "Besoin d’aide ?",
  "connectKit": "Connexion à votre kit",
  "connectKitDescription": "Assurez-vous que votre kit soit bien alimenté et appuyez sur le bouton central jusqu’à ce qu’il clignote en bleu",
  "kitDetected": "Kit détecté",
  "configurationFailed": "Configuration du kit échouée",
  "configurationSuccess": "Configuration du kit terminée",
  "finalizingConfiguration": "Finalisation de la configuration...",
  "passwordRequired": "Le mot de passe est requis",
  "connect": "Connecter",
  "errorOccured": "Une erreur est survenue",
  "selectWifi": "Sélectionnez le réseau sur lequel connecter votre kit",
  "configurationWifi": "Configuration wifi",
  "noWifiFound": "Aucun réseau WiFi disponible",
  "retry": "Réessayer",
  "loginOrPasswordIncorrect": "Adresse mail ou mot de passe incorrect",
  "operationTimeout": "Veuillez réessayer plus tard",
  "kitNotFound": "Votre kit est introuvable",
  "kitNotFoundDescription": "Assurez-vous que votre kit soit branché et attendez qu’il clignote en bleu",
  "weDidntSucceed": "Nous n’avons pas réussi...",
  "connectionError": "Erreur lors de la connexion",
  "cancel": "Annuler",
  "ok": "OK",
  "permissionsBluetoothNotGrantedDescription": "Veuillez activer les permissions Bluetooth pour pouvoir apparairer le module.",
  "promoDesc": "Bénéficiez de -20 % sur tous les kits autoconsommation jusqu’à 10 MW",
  "promoTitle": "Passez à la vitesse supérieure !",
  "settings": "Paramètres",
  "optimizeProduction": "Optimiser votre production",
  "noProductionData": "Aucune donnée de production disponible",
  "dataKwh": "{} kWh",
  "dataKwhUnit": "kWh",
  "productionPerDay": "Production / jour",
  "averageProductionPerHour": "Prod. moyenne / heure",
  "realizedSavings": "Economies / jour",
  "chart_period_daily": "Par jour",
  "chart_period_weekly": "Par semaine",
  "chart_period_monthly": "Par mois",
  "chart_period_yearly": "Par année",
  "allMyKits": "Tous mes kits",
  "productionPerMonth": "Production / mois",
  "productionPerYear": "Production / année",
  "productionPerWeek": "Production / semaine",
  "averageProductionPerDay": "Prod. moyenne / jour",
  "averageProductionPerWeek": "Prod. moyenne / semaine",
  "averageProductionPerMonth": "Prod. moyenne / mois",
  "todayX": "Aujourd'hui {}",
  "hourX": "{}h",
  "kitNumber": "Kit n°{}",
  "onBoardingTitle": "Connecter votre kit Play2Solar",
  "onBoardingFirstDescription": "Commencez par déballer et installer votre panneau Play2Solar",
  "onBoardingSecondDescription": "Branchez votre kit à une prise secteur alimentée",
  "onBoardingThirdDescription": "Appuyez sur le bouton central du boitier relié à la prise jusqu’à ce qu’il clignote en bleu",
  "onBoardingDone": "C'est fait !",
  "onBoardingWatchVideo": "Regarder la vidéo d'installation",
  "myProduction": "Ma production",
  "xKWh": "{} kWh",
  "hourXDescription": "{}:00",
  "noWifiFoundDescription": "Assurez-vous que votre WiFi est activé et que vous êtes à proximité d'un réseau",
  "myKits": "Mes kits Play2Solar",
  "addKit": "Ajouter un kit",
  "updateElectricityTariff": "Mettre à jour mon tarif d’électricité",
  "updateEmail": "Modifier mon email",
  "updatePassword": "Modifier mon mot de passe",
  "assistance": "Assistance",
  "legalMentions": "Mentions légales",
  "disconnect": "Se déconnecter",
  "save": "Enregistrer",
  "reset": "Réinitialiser",
  "electricityPrice": "Coût du kWh",
  "electricityTariffDescription": "Renseignez le coût que vous payez à votre fournisseur d’électricité. Cela permet d’affiner le calcul de vos économies réalisées.",
  "euro": "€"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"fr": _fr};
}
