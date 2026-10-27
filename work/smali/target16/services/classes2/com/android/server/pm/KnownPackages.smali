.class public final Lcom/android/server/pm/KnownPackages;
.super Ljava/lang/Object;
.source "KnownPackages.java"


# instance fields
.field public final mAmbientContextDetectionPackage:Ljava/lang/String;

.field public final mAppPredictionServicePackage:Ljava/lang/String;

.field public final mCompanionPackage:Ljava/lang/String;

.field public final mConfiguratorPackage:Ljava/lang/String;

.field public final mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

.field public final mDefaultTextClassifierPackage:Ljava/lang/String;

.field public final mDeveloperVerificationServiceProviderPackage:Ljava/lang/String;

.field public final mIncidentReportApproverPackage:Ljava/lang/String;

.field public final mOverlayConfigSignaturePackage:Ljava/lang/String;

.field public final mRecentsPackage:Ljava/lang/String;

.field public final mRequiredInstallerPackage:Ljava/lang/String;

.field public final mRequiredPermissionControllerPackage:Ljava/lang/String;

.field public final mRequiredUninstallerPackage:Ljava/lang/String;

.field public final mRequiredVerifierPackages:[Ljava/lang/String;

.field public final mRetailDemoPackage:Ljava/lang/String;

.field public final mSetupWizardPackage:Ljava/lang/String;

.field public final mSystemTextClassifierPackageName:Ljava/lang/String;

.field public final mWearableSensingPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/DefaultAppProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/android/server/pm/KnownPackages;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    .line 113
    iput-object p2, p0, Lcom/android/server/pm/KnownPackages;->mRequiredInstallerPackage:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Lcom/android/server/pm/KnownPackages;->mRequiredUninstallerPackage:Ljava/lang/String;

    .line 115
    iput-object p4, p0, Lcom/android/server/pm/KnownPackages;->mSetupWizardPackage:Ljava/lang/String;

    .line 116
    iput-object p5, p0, Lcom/android/server/pm/KnownPackages;->mRequiredVerifierPackages:[Ljava/lang/String;

    .line 117
    iput-object p6, p0, Lcom/android/server/pm/KnownPackages;->mDefaultTextClassifierPackage:Ljava/lang/String;

    .line 118
    iput-object p7, p0, Lcom/android/server/pm/KnownPackages;->mSystemTextClassifierPackageName:Ljava/lang/String;

    .line 119
    iput-object p8, p0, Lcom/android/server/pm/KnownPackages;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    .line 120
    iput-object p9, p0, Lcom/android/server/pm/KnownPackages;->mConfiguratorPackage:Ljava/lang/String;

    .line 121
    iput-object p10, p0, Lcom/android/server/pm/KnownPackages;->mIncidentReportApproverPackage:Ljava/lang/String;

    .line 122
    iput-object p11, p0, Lcom/android/server/pm/KnownPackages;->mAmbientContextDetectionPackage:Ljava/lang/String;

    .line 123
    iput-object p12, p0, Lcom/android/server/pm/KnownPackages;->mWearableSensingPackage:Ljava/lang/String;

    .line 124
    iput-object p13, p0, Lcom/android/server/pm/KnownPackages;->mAppPredictionServicePackage:Ljava/lang/String;

    .line 125
    iput-object p14, p0, Lcom/android/server/pm/KnownPackages;->mCompanionPackage:Ljava/lang/String;

    .line 126
    iput-object p15, p0, Lcom/android/server/pm/KnownPackages;->mRetailDemoPackage:Ljava/lang/String;

    move-object/from16 p1, p16

    .line 127
    iput-object p1, p0, Lcom/android/server/pm/KnownPackages;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    move-object/from16 p1, p17

    .line 128
    iput-object p1, p0, Lcom/android/server/pm/KnownPackages;->mRecentsPackage:Ljava/lang/String;

    move-object/from16 p1, p18

    .line 129
    iput-object p1, p0, Lcom/android/server/pm/KnownPackages;->mDeveloperVerificationServiceProviderPackage:Ljava/lang/String;

    return-void
.end method

.method public static knownPackageToString(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_46

    .line 184
    const-string p0, "Unknown"

    return-object p0

    .line 182
    :pswitch_6
    const-string p0, "Developer verification service provider"

    return-object p0

    .line 180
    :pswitch_9
    const-string p0, "Wearable sensing"

    return-object p0

    .line 178
    :pswitch_c
    const-string p0, "Ambient Context Detection"

    return-object p0

    .line 176
    :pswitch_f
    const-string p0, "Recents"

    return-object p0

    .line 172
    :pswitch_12
    const-string p0, "Retail Demo"

    return-object p0

    .line 170
    :pswitch_15
    const-string p0, "Companion"

    return-object p0

    .line 168
    :pswitch_18
    const-string p0, "Wi-Fi"

    return-object p0

    .line 174
    :pswitch_1b
    const-string p0, "Overlay Config Signature"

    return-object p0

    .line 166
    :pswitch_1e
    const-string p0, "App Predictor"

    return-object p0

    .line 164
    :pswitch_21
    const-string p0, "Incident Report Approver"

    return-object p0

    .line 162
    :pswitch_24
    const-string p0, "Configurator"

    return-object p0

    .line 160
    :pswitch_27
    const-string p0, "Documenter"

    return-object p0

    .line 158
    :pswitch_2a
    const-string p0, "Wellbeing"

    return-object p0

    .line 156
    :pswitch_2d
    const-string p0, "Permission Controller"

    return-object p0

    .line 154
    :pswitch_30
    const-string p0, "System Text Classifier"

    return-object p0

    .line 152
    :pswitch_33
    const-string p0, "Browser"

    return-object p0

    .line 150
    :pswitch_36
    const-string p0, "Verifier"

    return-object p0

    .line 148
    :pswitch_39
    const-string p0, "Uninstaller"

    return-object p0

    .line 146
    :pswitch_3c
    const-string p0, "Installer"

    return-object p0

    .line 144
    :pswitch_3f
    const-string p0, "Setup Wizard"

    return-object p0

    .line 142
    :pswitch_42
    const-string p0, "System"

    return-object p0

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_42
        :pswitch_3f
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
.method public getKnownPackageNames(Lcom/android/server/pm/Computer;II)[Ljava/lang/String;
    .registers 5

    .line 188
    const-class v0, Ljava/lang/String;

    packed-switch p2, :pswitch_data_da

    .line 230
    :pswitch_5
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 227
    :pswitch_c
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mDeveloperVerificationServiceProviderPackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 213
    :pswitch_17
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mWearableSensingPackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 211
    :pswitch_22
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mAmbientContextDetectionPackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 225
    :pswitch_2d
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mRecentsPackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 219
    :pswitch_38
    iget-object p1, p0, Lcom/android/server/pm/KnownPackages;->mRetailDemoPackage:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 220
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_47
    const/4 p1, 0x1

    .line 221
    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mRetailDemoPackage:Ljava/lang/String;

    aput-object p0, p1, p2

    return-object p1

    .line 217
    :pswitch_50
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mCompanionPackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 223
    :pswitch_5b
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 215
    :pswitch_66
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mAppPredictionServicePackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 209
    :pswitch_71
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mIncidentReportApproverPackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 207
    :pswitch_7c
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mConfiguratorPackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 205
    :pswitch_87
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 202
    :pswitch_92
    iget-object p2, p0, Lcom/android/server/pm/KnownPackages;->mDefaultTextClassifierPackage:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mSystemTextClassifierPackageName:Ljava/lang/String;

    filled-new-array {p2, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 190
    :pswitch_9f
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    invoke-virtual {p0, p3}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultBrowser(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 200
    :pswitch_aa
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mRequiredVerifierPackages:[Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 194
    :pswitch_b1
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mRequiredUninstallerPackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 192
    :pswitch_bc
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mRequiredInstallerPackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 196
    :pswitch_c7
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mSetupWizardPackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 198
    :pswitch_d2
    const-string p0, "android"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_d2
        :pswitch_c7
        :pswitch_bc
        :pswitch_b1
        :pswitch_aa
        :pswitch_9f
        :pswitch_92
        :pswitch_87
        :pswitch_5
        :pswitch_5
        :pswitch_7c
        :pswitch_71
        :pswitch_66
        :pswitch_5b
        :pswitch_5
        :pswitch_50
        :pswitch_38
        :pswitch_2d
        :pswitch_22
        :pswitch_17
        :pswitch_c
    .end packed-switch
.end method
