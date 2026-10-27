.class public final Lcom/android/server/pm/KnownPackages;
.super Ljava/lang/Object;
.source "KnownPackages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/KnownPackages$KnownPackage;
    }
.end annotation


# static fields
.field public static final LAST_KNOWN_PACKAGE:I = 0x12

.field public static final PACKAGE_AMBIENT_CONTEXT_DETECTION:I = 0x12

.field public static final PACKAGE_APP_PREDICTOR:I = 0xc

.field public static final PACKAGE_BROWSER:I = 0x5

.field public static final PACKAGE_COMPANION:I = 0xf

.field public static final PACKAGE_CONFIGURATOR:I = 0xa

.field public static final PACKAGE_DOCUMENTER:I = 0x9

.field public static final PACKAGE_INCIDENT_REPORT_APPROVER:I = 0xb

.field public static final PACKAGE_INSTALLER:I = 0x2

.field public static final PACKAGE_OVERLAY_CONFIG_SIGNATURE:I = 0xd

.field public static final PACKAGE_PERMISSION_CONTROLLER:I = 0x7

.field public static final PACKAGE_RECENTS:I = 0x11

.field public static final PACKAGE_RETAIL_DEMO:I = 0x10

.field public static final PACKAGE_SETUP_WIZARD:I = 0x1

.field public static final PACKAGE_SYSTEM:I = 0x0

.field public static final PACKAGE_SYSTEM_TEXT_CLASSIFIER:I = 0x6

.field public static final PACKAGE_UNINSTALLER:I = 0x3

.field public static final PACKAGE_VERIFIER:I = 0x4

.field public static final PACKAGE_WELLBEING:I = 0x8

.field public static final PACKAGE_WIFI:I = 0xe


# instance fields
.field private final mAmbientContextDetectionPackage:Ljava/lang/String;

.field private final mAppPredictionServicePackage:Ljava/lang/String;

.field private final mCompanionPackage:Ljava/lang/String;

.field private final mConfiguratorPackage:Ljava/lang/String;

.field private final mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

.field private final mDefaultTextClassifierPackage:Ljava/lang/String;

.field private final mIncidentReportApproverPackage:Ljava/lang/String;

.field private final mOverlayConfigSignaturePackage:Ljava/lang/String;

.field private final mRecentsPackage:Ljava/lang/String;

.field private final mRequiredInstallerPackage:Ljava/lang/String;

.field private final mRequiredPermissionControllerPackage:Ljava/lang/String;

.field private final mRequiredUninstallerPackage:Ljava/lang/String;

.field private final mRequiredVerifierPackage:Ljava/lang/String;

.field private final mRetailDemoPackage:Ljava/lang/String;

.field private final mSetupWizardPackage:Ljava/lang/String;

.field private final mSystemTextClassifierPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/DefaultAppProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 33
    .param p1, "defaultAppProvider"    # Lcom/android/server/pm/DefaultAppProvider;
    .param p2, "requiredInstallerPackage"    # Ljava/lang/String;
    .param p3, "requiredUninstallerPackage"    # Ljava/lang/String;
    .param p4, "setupWizardPackage"    # Ljava/lang/String;
    .param p5, "requiredVerifierPackage"    # Ljava/lang/String;
    .param p6, "defaultTextClassifierPackage"    # Ljava/lang/String;
    .param p7, "systemTextClassifierPackageName"    # Ljava/lang/String;
    .param p8, "requiredPermissionControllerPackage"    # Ljava/lang/String;
    .param p9, "configuratorPackage"    # Ljava/lang/String;
    .param p10, "incidentReportApproverPackage"    # Ljava/lang/String;
    .param p11, "ambientContextDetectionPackage"    # Ljava/lang/String;
    .param p12, "appPredictionServicePackage"    # Ljava/lang/String;
    .param p13, "companionPackageName"    # Ljava/lang/String;
    .param p14, "retailDemoPackage"    # Ljava/lang/String;
    .param p15, "overlayConfigSignaturePackage"    # Ljava/lang/String;
    .param p16, "recentsPackage"    # Ljava/lang/String;

    .line 102
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 103
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    .line 104
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/server/pm/KnownPackages;->mRequiredInstallerPackage:Ljava/lang/String;

    .line 105
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/android/server/pm/KnownPackages;->mRequiredUninstallerPackage:Ljava/lang/String;

    .line 106
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/android/server/pm/KnownPackages;->mSetupWizardPackage:Ljava/lang/String;

    .line 107
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/android/server/pm/KnownPackages;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 108
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/android/server/pm/KnownPackages;->mDefaultTextClassifierPackage:Ljava/lang/String;

    .line 109
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/android/server/pm/KnownPackages;->mSystemTextClassifierPackageName:Ljava/lang/String;

    .line 110
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/android/server/pm/KnownPackages;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    .line 111
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/android/server/pm/KnownPackages;->mConfiguratorPackage:Ljava/lang/String;

    .line 112
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/android/server/pm/KnownPackages;->mIncidentReportApproverPackage:Ljava/lang/String;

    .line 113
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/android/server/pm/KnownPackages;->mAmbientContextDetectionPackage:Ljava/lang/String;

    .line 114
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/android/server/pm/KnownPackages;->mAppPredictionServicePackage:Ljava/lang/String;

    .line 115
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/android/server/pm/KnownPackages;->mCompanionPackage:Ljava/lang/String;

    .line 116
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/android/server/pm/KnownPackages;->mRetailDemoPackage:Ljava/lang/String;

    .line 117
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/android/server/pm/KnownPackages;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    .line 118
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mRecentsPackage:Ljava/lang/String;

    .line 119
    return-void
.end method

.method static knownPackageToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "knownPackage"    # I

    .line 129
    packed-switch p0, :pswitch_data_40

    .line 169
    const-string v0, "Unknown"

    return-object v0

    .line 167
    :pswitch_6
    const-string v0, "Ambient Context Detection"

    return-object v0

    .line 165
    :pswitch_9
    const-string v0, "Recents"

    return-object v0

    .line 161
    :pswitch_c
    const-string v0, "Retail Demo"

    return-object v0

    .line 159
    :pswitch_f
    const-string v0, "Companion"

    return-object v0

    .line 157
    :pswitch_12
    const-string v0, "Wi-Fi"

    return-object v0

    .line 163
    :pswitch_15
    const-string v0, "Overlay Config Signature"

    return-object v0

    .line 155
    :pswitch_18
    const-string v0, "App Predictor"

    return-object v0

    .line 153
    :pswitch_1b
    const-string v0, "Incident Report Approver"

    return-object v0

    .line 151
    :pswitch_1e
    const-string v0, "Configurator"

    return-object v0

    .line 149
    :pswitch_21
    const-string v0, "Documenter"

    return-object v0

    .line 147
    :pswitch_24
    const-string v0, "Wellbeing"

    return-object v0

    .line 145
    :pswitch_27
    const-string v0, "Permission Controller"

    return-object v0

    .line 143
    :pswitch_2a
    const-string v0, "System Text Classifier"

    return-object v0

    .line 141
    :pswitch_2d
    const-string v0, "Browser"

    return-object v0

    .line 139
    :pswitch_30
    const-string v0, "Verifier"

    return-object v0

    .line 137
    :pswitch_33
    const-string v0, "Uninstaller"

    return-object v0

    .line 135
    :pswitch_36
    const-string v0, "Installer"

    return-object v0

    .line 133
    :pswitch_39
    const-string v0, "Setup Wizard"

    return-object v0

    .line 131
    :pswitch_3c
    const-string v0, "System"

    return-object v0

    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method getKnownPackageNames(Lcom/android/server/pm/Computer;II)[Ljava/lang/String;
    .registers 8
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "knownPackage"    # I
    .param p3, "userId"    # I

    .line 173
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_ce

    .line 210
    :pswitch_5
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 196
    :pswitch_e
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/KnownPackages;->mAmbientContextDetectionPackage:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-interface {p1, v1}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 208
    :pswitch_19
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/KnownPackages;->mRecentsPackage:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-interface {p1, v1}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 202
    :pswitch_24
    iget-object v2, p0, Lcom/android/server/pm/KnownPackages;->mRetailDemoPackage:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 203
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_3c

    .line 204
    :cond_35
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/KnownPackages;->mRetailDemoPackage:Ljava/lang/String;

    aput-object v2, v1, v0

    move-object v0, v1

    .line 202
    :goto_3c
    return-object v0

    .line 200
    :pswitch_3d
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/KnownPackages;->mCompanionPackage:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-interface {p1, v1}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 206
    :pswitch_48
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/KnownPackages;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-interface {p1, v1}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 198
    :pswitch_53
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/KnownPackages;->mAppPredictionServicePackage:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-interface {p1, v1}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 194
    :pswitch_5e
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/KnownPackages;->mIncidentReportApproverPackage:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-interface {p1, v1}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 192
    :pswitch_69
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/KnownPackages;->mConfiguratorPackage:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-interface {p1, v1}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 190
    :pswitch_74
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/KnownPackages;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-interface {p1, v1}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 187
    :pswitch_7f
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/KnownPackages;->mDefaultTextClassifierPackage:Ljava/lang/String;

    aput-object v3, v2, v0

    iget-object v0, p0, Lcom/android/server/pm/KnownPackages;->mSystemTextClassifierPackageName:Ljava/lang/String;

    aput-object v0, v2, v1

    invoke-interface {p1, v2}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 175
    :pswitch_8f
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/KnownPackages;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    invoke-virtual {v2, p3}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultBrowser(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    return-object v1

    .line 185
    :pswitch_9a
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/KnownPackages;->mRequiredVerifierPackage:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-interface {p1, v1}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 179
    :pswitch_a5
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/KnownPackages;->mRequiredUninstallerPackage:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-interface {p1, v1}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 177
    :pswitch_b0
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/KnownPackages;->mRequiredInstallerPackage:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-interface {p1, v1}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 181
    :pswitch_bb
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/KnownPackages;->mSetupWizardPackage:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-interface {p1, v1}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 183
    :pswitch_c6
    const-string v0, "android"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_c6
        :pswitch_bb
        :pswitch_b0
        :pswitch_a5
        :pswitch_9a
        :pswitch_8f
        :pswitch_7f
        :pswitch_74
        :pswitch_5
        :pswitch_5
        :pswitch_69
        :pswitch_5e
        :pswitch_53
        :pswitch_48
        :pswitch_5
        :pswitch_3d
        :pswitch_24
        :pswitch_19
        :pswitch_e
    .end packed-switch
.end method
