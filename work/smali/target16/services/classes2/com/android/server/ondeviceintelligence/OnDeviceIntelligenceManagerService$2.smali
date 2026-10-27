.class public Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;
.super Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager$Stub;
.source "OnDeviceIntelligenceManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;


# direct methods
.method public static synthetic $r8$lambda$5Z8SepzAQqxNzPqaiTN8NbYaCXk(Landroid/os/RemoteCallback;Lcom/android/internal/infra/AndroidFuture;Landroid/os/Bundle;)V
    .registers 3

    .line 278
    invoke-virtual {p0, p2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    const/4 p0, 0x0

    .line 279
    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$71QWr5k16_Fi9atML_ykFJPYJHI(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;ILandroid/app/ondeviceintelligence/Feature;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)Lcom/android/internal/infra/AndroidFuture;
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->lambda$getFeatureDetails$10(ILandroid/app/ondeviceintelligence/Feature;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7PbeiQobPdO01zA4LTxuSNGd8m4(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;Landroid/app/ondeviceintelligence/IDownloadCallback;ILandroid/app/ondeviceintelligence/Feature;Lcom/android/internal/infra/AndroidFuture;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)Lcom/android/internal/infra/AndroidFuture;
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->lambda$requestFeatureDownload$12(Landroid/app/ondeviceintelligence/IDownloadCallback;ILandroid/app/ondeviceintelligence/Feature;Lcom/android/internal/infra/AndroidFuture;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7gVj7W_mCkADOrm4EDFi8U7w3cc(Landroid/os/RemoteCallback;Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;)V
    .registers 2

    const/4 p1, 0x0

    .line 270
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9Jl3zKtt7rpilZKTVpwuOPLGbxc(Landroid/os/Bundle;)V
    .registers 1

    .line 647
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->tryCloseResource(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CwimP2efMrJA2qlFA2FhDrUXa-g(Landroid/app/ondeviceintelligence/IFeatureCallback;Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;)V
    .registers 4

    .line 295
    sget-object v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$11;->$SwitchMap$com$android$server$ondeviceintelligence$executors$RemoteCallExecutor$FailureType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_25

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_12

    return-void

    .line 306
    :cond_12
    const-string p1, "Remote call timed out"

    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const/4 v1, 0x7

    invoke-interface {p0, v1, p1, v0}, Landroid/app/ondeviceintelligence/IFeatureCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void

    .line 301
    :cond_1b
    const-string p1, "Remote call failed"

    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const/16 v1, 0xc8

    invoke-interface {p0, v1, p1, v0}, Landroid/app/ondeviceintelligence/IFeatureCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void

    .line 296
    :cond_25
    const-string p1, "OnDeviceIntelligenceManagerService is unavailable"

    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const/16 v1, 0x64

    invoke-interface {p0, v1, p1, v0}, Landroid/app/ondeviceintelligence/IFeatureCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HupOeQ6V1FIEKElqqlEN1wVKmeM(Landroid/app/ondeviceintelligence/IResponseCallback;Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;)V
    .registers 4

    .line 607
    sget-object v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$11;->$SwitchMap$com$android$server$ondeviceintelligence$executors$RemoteCallExecutor$FailureType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_25

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_12

    return-void

    .line 618
    :cond_12
    const-string p1, "Remote call timed out"

    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const/4 v1, 0x7

    invoke-interface {p0, v1, p1, v0}, Landroid/app/ondeviceintelligence/IResponseCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void

    .line 613
    :cond_1b
    const-string p1, "Remote call failed"

    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const/16 v1, 0xc8

    invoke-interface {p0, v1, p1, v0}, Landroid/app/ondeviceintelligence/IResponseCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void

    .line 608
    :cond_25
    const-string p1, "OnDeviceIntelligenceManagerService is unavailable"

    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const/16 v1, 0xf

    invoke-interface {p0, v1, p1, v0}, Landroid/app/ondeviceintelligence/IResponseCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NU4w6hrRdU0emG-hSax0GxVNMOM(Landroid/app/ondeviceintelligence/IStreamingResponseCallback;Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;)V
    .registers 4

    .line 669
    sget-object v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$11;->$SwitchMap$com$android$server$ondeviceintelligence$executors$RemoteCallExecutor$FailureType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_25

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_12

    return-void

    .line 680
    :cond_12
    const-string p1, "Remote call timed out"

    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const/4 v1, 0x7

    invoke-interface {p0, v1, p1, v0}, Landroid/app/ondeviceintelligence/IStreamingResponseCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void

    .line 675
    :cond_1b
    const-string p1, "Remote call failed"

    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const/16 v1, 0xc8

    invoke-interface {p0, v1, p1, v0}, Landroid/app/ondeviceintelligence/IStreamingResponseCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void

    .line 670
    :cond_25
    const-string p1, "OnDeviceIntelligenceManagerService is unavailable"

    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const/16 v1, 0xf

    invoke-interface {p0, v1, p1, v0}, Landroid/app/ondeviceintelligence/IStreamingResponseCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ot1rQldtA0JEJ7gT-gNcF109YXw(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;Landroid/os/RemoteCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)Lcom/android/internal/infra/AndroidFuture;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->lambda$getVersion$2(Landroid/os/RemoteCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$R44UFnqmMdxog_y48SFYTb9mA4M(Landroid/os/Bundle;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    .line 642
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->tryCloseResource(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dZtfwpBCgXac8VaFHWjiAYp3JyM(Landroid/os/Bundle;)V
    .registers 1

    .line 709
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->tryCloseResource(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$drDsJoH8edeIE5ENB3WV8YNEoIo(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;ILandroid/app/ondeviceintelligence/IListFeaturesCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)Lcom/android/internal/infra/AndroidFuture;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->lambda$listFeatures$6(ILandroid/app/ondeviceintelligence/IListFeaturesCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gmfbX0JIJ3hrxBTQrFscum4alYA(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;Landroid/os/Bundle;ILandroid/app/ondeviceintelligence/Feature;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IResponseCallback;Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)Lcom/android/internal/infra/AndroidFuture;
    .registers 9

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->lambda$processRequest$18(Landroid/os/Bundle;ILandroid/app/ondeviceintelligence/Feature;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IResponseCallback;Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$h60wyudDaoUhCBTBpJCB2TGT61o(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;ILandroid/os/PersistableBundle;Landroid/app/ondeviceintelligence/IListFeaturesCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)Lcom/android/internal/infra/AndroidFuture;
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->lambda$listFeaturesWithFilter$8(ILandroid/os/PersistableBundle;Landroid/app/ondeviceintelligence/IListFeaturesCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hpNOSU5sbQw3LAexG2EDeTHO6RI(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/ITokenInfoCallback;Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)Lcom/android/internal/infra/AndroidFuture;
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->lambda$requestTokenInfo$14(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/ITokenInfoCallback;Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jOwqYeyW9RkEVZ0NwtNKD5M4HMI(Landroid/app/ondeviceintelligence/IListFeaturesCallback;Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;)V
    .registers 4

    .line 345
    sget-object v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$11;->$SwitchMap$com$android$server$ondeviceintelligence$executors$RemoteCallExecutor$FailureType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_25

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_12

    return-void

    .line 356
    :cond_12
    const-string p1, "Remote call timed out"

    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const/4 v1, 0x7

    invoke-interface {p0, v1, p1, v0}, Landroid/app/ondeviceintelligence/IListFeaturesCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void

    .line 351
    :cond_1b
    const-string p1, "Remote call failed"

    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const/16 v1, 0xc8

    invoke-interface {p0, v1, p1, v0}, Landroid/app/ondeviceintelligence/IListFeaturesCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void

    .line 346
    :cond_25
    const-string p1, "OnDeviceIntelligenceManagerService is unavailable"

    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const/16 v1, 0x64

    invoke-interface {p0, v1, p1, v0}, Landroid/app/ondeviceintelligence/IListFeaturesCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jf5LBNjJiCrqHXzs2rDIynCphdU(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;IILandroid/app/ondeviceintelligence/IFeatureCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)Lcom/android/internal/infra/AndroidFuture;
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->lambda$getFeature$4(IILandroid/app/ondeviceintelligence/IFeatureCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kAVeI6TH-YFGUBQPfxVURw5ep0M(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;Landroid/os/Bundle;ILandroid/app/ondeviceintelligence/Feature;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IStreamingResponseCallback;Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)Lcom/android/internal/infra/AndroidFuture;
    .registers 9

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->lambda$processRequestStreaming$22(Landroid/os/Bundle;ILandroid/app/ondeviceintelligence/Feature;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IStreamingResponseCallback;Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$neJaDlCZohFcATi1hQjcb1yDXLw(Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;)V
    .registers 4

    .line 451
    sget-object v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$11;->$SwitchMap$com$android$server$ondeviceintelligence$executors$RemoteCallExecutor$FailureType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_25

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_12

    return-void

    .line 463
    :cond_12
    const-string p1, "Remote call timed out"

    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const/4 v1, 0x7

    invoke-interface {p0, v1, p1, v0}, Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void

    .line 458
    :cond_1b
    const-string p1, "Remote call failed"

    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const/16 v1, 0xc8

    invoke-interface {p0, v1, p1, v0}, Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void

    .line 453
    :cond_25
    const-string p1, "OnDeviceIntelligenceManagerService is unavailable"

    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const/16 v1, 0x64

    invoke-interface {p0, v1, p1, v0}, Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pro06-5QwJaNnGx2B1y5j_U5JNM(Landroid/app/ondeviceintelligence/ITokenInfoCallback;Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;)V
    .registers 4

    .line 550
    sget-object v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$11;->$SwitchMap$com$android$server$ondeviceintelligence$executors$RemoteCallExecutor$FailureType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_25

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_12

    return-void

    .line 561
    :cond_12
    const-string p1, "Remote call timed out"

    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const/4 v1, 0x7

    invoke-interface {p0, v1, p1, v0}, Landroid/app/ondeviceintelligence/ITokenInfoCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void

    .line 556
    :cond_1b
    const-string p1, "Remote call failed"

    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const/16 v1, 0xc8

    invoke-interface {p0, v1, p1, v0}, Landroid/app/ondeviceintelligence/ITokenInfoCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void

    .line 551
    :cond_25
    const-string p1, "OnDeviceIntelligenceManagerService is unavailable"

    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const/16 v1, 0x64

    invoke-interface {p0, v1, p1, v0}, Landroid/app/ondeviceintelligence/ITokenInfoCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qa-B9dnLKPK-2LSJi74WHu4mD6A(Landroid/app/ondeviceintelligence/IDownloadCallback;Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;)V
    .registers 4

    .line 504
    sget-object v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$11;->$SwitchMap$com$android$server$ondeviceintelligence$executors$RemoteCallExecutor$FailureType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v0, :cond_24

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1c

    const/4 v0, 0x3

    if-eq p1, v0, :cond_13

    return-void

    .line 514
    :cond_13
    const-string p1, "Remote call timed out"

    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const/4 v1, 0x0

    invoke-interface {p0, v1, p1, v0}, Landroid/app/ondeviceintelligence/IDownloadCallback;->onDownloadFailed(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void

    .line 510
    :cond_1c
    const-string p1, "Remote call failed"

    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    invoke-interface {p0, v1, p1, v0}, Landroid/app/ondeviceintelligence/IDownloadCallback;->onDownloadFailed(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void

    .line 506
    :cond_24
    const-string p1, "OnDeviceIntelligenceManagerService is unavailable"

    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    invoke-interface {p0, v1, p1, v0}, Landroid/app/ondeviceintelligence/IDownloadCallback;->onDownloadFailed(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xKOQTSM6GLKKaSxwbdJrREX6ZvM(Landroid/os/Bundle;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    .line 704
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->tryCloseResource(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xL8yBbLoiowkt-5pStHjtJp4XV0(Landroid/os/Bundle;)V
    .registers 1

    .line 584
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->tryCloseResource(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xZmbra5YFY6Y-2kfo1AXrEf61GA(Landroid/os/Bundle;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    .line 579
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->tryCloseResource(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yGBwyH-LGBCpq_i-oXLS3vXBNFE(Landroid/app/ondeviceintelligence/IListFeaturesCallback;Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;)V
    .registers 4

    .line 398
    sget-object v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$11;->$SwitchMap$com$android$server$ondeviceintelligence$executors$RemoteCallExecutor$FailureType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_25

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_12

    return-void

    .line 409
    :cond_12
    const-string p1, "Remote call timed out"

    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const/4 v1, 0x7

    invoke-interface {p0, v1, p1, v0}, Landroid/app/ondeviceintelligence/IListFeaturesCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void

    .line 404
    :cond_1b
    const-string p1, "Remote call failed"

    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const/16 v1, 0xc8

    invoke-interface {p0, v1, p1, v0}, Landroid/app/ondeviceintelligence/IListFeaturesCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void

    .line 399
    :cond_25
    const-string p1, "OnDeviceIntelligenceManagerService is unavailable"

    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const/16 v1, 0x64

    invoke-interface {p0, v1, p1, v0}, Landroid/app/ondeviceintelligence/IListFeaturesCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V
    .registers 2

    .line 250
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-direct {p0}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 723
    iget-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmContext(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Landroid/content/Context;

    move-result-object p1

    sget-object p3, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 726
    :cond_f
    const-string p1, "OnDeviceIntelligenceManagerService"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 727
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 728
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Configurations:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 729
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 731
    :try_start_3c
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-virtual {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->getServiceNames()[Ljava/lang/String;

    move-result-object v0

    .line 732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "OnDeviceIntelligenceService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "OnDeviceSandboxedInferenceService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_76
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3c .. :try_end_76} :catch_77

    goto :goto_8f

    :catch_77
    move-exception v0

    .line 737
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Could not get service names: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 739
    :goto_8f
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 740
    iget-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmRemoteOnDeviceIntelligenceService(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    move-result-object p1

    if-eqz p1, :cond_bd

    .line 741
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mRemoteOnDeviceIntelligenceService: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmRemoteOnDeviceIntelligenceService(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    iget-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmRemoteOnDeviceIntelligenceService(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    move-result-object p1

    invoke-virtual {p1, p3, p2}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 745
    :cond_bd
    iget-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmRemoteInferenceService(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;

    move-result-object p1

    if-eqz p1, :cond_e8

    .line 746
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mRemoteInferenceService: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmRemoteInferenceService(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 747
    iget-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmRemoteInferenceService(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;

    move-result-object p1

    invoke-virtual {p1, p3, p2}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 749
    :cond_e8
    iget-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmInferenceInfoStore(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    move-result-object p1

    invoke-virtual {p1, p3, p2}, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 750
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 751
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Lifecycle Listeners:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 752
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmLifecycleListeners(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/os/RemoteCallbackList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public getFeature(ILandroid/app/ondeviceintelligence/IFeatureCallback;)V
    .registers 6

    .line 289
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 290
    sget-object v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    const-string v2, "OnDeviceIntelligenceManagerInternal getFeatures"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    new-instance v1, Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor$Builder;

    invoke-direct {v1}, Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor$Builder;-><init>()V

    new-instance v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda4;

    invoke-direct {v2, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda4;-><init>(Landroid/app/ondeviceintelligence/IFeatureCallback;)V

    .line 293
    invoke-virtual {v1, v2}, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;->onFailure(Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureConsumer;)Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;

    move-result-object v1

    check-cast v1, Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor$Builder;

    .line 312
    invoke-virtual {v1}, Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor$Builder;->build()Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor;

    move-result-object v1

    .line 313
    new-instance v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;IILandroid/app/ondeviceintelligence/IFeatureCallback;)V

    invoke-virtual {v1, v2}, Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor;->execute(Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$RemoteCallRunner;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public getFeatureDetails(Landroid/app/ondeviceintelligence/Feature;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)V
    .registers 6

    .line 444
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 445
    sget-object v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    const-string v2, "OnDeviceIntelligenceManagerInternal getFeatureDetails"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    new-instance v1, Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor$Builder;

    invoke-direct {v1}, Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor$Builder;-><init>()V

    new-instance v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda6;

    invoke-direct {v2, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda6;-><init>(Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)V

    .line 449
    invoke-virtual {v1, v2}, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;->onFailure(Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureConsumer;)Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;

    move-result-object v1

    check-cast v1, Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor$Builder;

    .line 470
    invoke-virtual {v1}, Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor$Builder;->build()Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor;

    move-result-object v1

    new-instance v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;ILandroid/app/ondeviceintelligence/Feature;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)V

    .line 471
    invoke-virtual {v1, v2}, Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor;->execute(Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$RemoteCallRunner;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public getLatestInferenceInfo(J)Ljava/util/List;
    .registers 6

    .line 258
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmContext(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    sget-object v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mgetLatestInferenceInfo(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getRemoteServicePackageName()Ljava/lang/String;
    .registers 1

    .line 253
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->getRemoteConfiguredPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVersion(Landroid/os/RemoteCallback;)V
    .registers 4

    .line 266
    sget-object v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    const-string v1, "OnDeviceIntelligenceManagerInternal getVersion"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    new-instance v0, Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor$Builder;

    invoke-direct {v0}, Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor$Builder;-><init>()V

    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda14;

    invoke-direct {v1, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda14;-><init>(Landroid/os/RemoteCallback;)V

    .line 270
    invoke-virtual {v0, v1}, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;->onFailure(Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureConsumer;)Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor$Builder;

    .line 271
    invoke-virtual {v0}, Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor$Builder;->build()Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor;

    move-result-object v0

    .line 272
    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor;->execute(Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$RemoteCallRunner;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public final synthetic lambda$getFeature$4(IILandroid/app/ondeviceintelligence/IFeatureCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)Lcom/android/internal/infra/AndroidFuture;
    .registers 7

    .line 314
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 315
    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$1;

    invoke-direct {v1, p0, p3, v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$1;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;Landroid/app/ondeviceintelligence/IFeatureCallback;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-interface {p4, p1, p2, v1}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;->getFeature(IILandroid/app/ondeviceintelligence/IFeatureCallback;)V

    .line 332
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mgetIdleTimeoutMs(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)J

    move-result-wide p0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$getFeatureDetails$10(ILandroid/app/ondeviceintelligence/Feature;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)Lcom/android/internal/infra/AndroidFuture;
    .registers 7

    .line 472
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 473
    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$4;

    invoke-direct {v1, p0, v0, p3}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$4;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)V

    invoke-interface {p4, p1, p2, v1}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;->getFeatureDetails(ILandroid/app/ondeviceintelligence/Feature;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)V

    .line 490
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mgetIdleTimeoutMs(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)J

    move-result-wide p0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$getVersion$2(Landroid/os/RemoteCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)Lcom/android/internal/infra/AndroidFuture;
    .registers 6

    .line 274
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 275
    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda24;

    invoke-direct {v2, p1, v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda24;-><init>(Landroid/os/RemoteCallback;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-direct {v1, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {p2, v1}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;->getVersion(Landroid/os/RemoteCallback;)V

    .line 281
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mgetIdleTimeoutMs(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)J

    move-result-wide p0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$listFeatures$6(ILandroid/app/ondeviceintelligence/IListFeaturesCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)Lcom/android/internal/infra/AndroidFuture;
    .registers 6

    .line 364
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 365
    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$2;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$2;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;Landroid/app/ondeviceintelligence/IListFeaturesCallback;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-interface {p3, p1, v1}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;->listFeatures(ILandroid/app/ondeviceintelligence/IListFeaturesCallback;)V

    .line 383
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mgetIdleTimeoutMs(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)J

    move-result-wide p0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$listFeaturesWithFilter$8(ILandroid/os/PersistableBundle;Landroid/app/ondeviceintelligence/IListFeaturesCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)Lcom/android/internal/infra/AndroidFuture;
    .registers 7

    .line 417
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 418
    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$3;

    invoke-direct {v1, p0, p3, v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$3;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;Landroid/app/ondeviceintelligence/IListFeaturesCallback;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-interface {p4, p1, p2, v1}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;->listFeaturesWithFilter(ILandroid/os/PersistableBundle;Landroid/app/ondeviceintelligence/IListFeaturesCallback;)V

    .line 436
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mgetIdleTimeoutMs(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)J

    move-result-wide p0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$processRequest$18(Landroid/os/Bundle;ILandroid/app/ondeviceintelligence/Feature;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IResponseCallback;Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)Lcom/android/internal/infra/AndroidFuture;
    .registers 14

    .line 626
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 627
    const-string/jumbo v1, "request_inference_info"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 630
    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 633
    invoke-static {v2, p5}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mwrapCancellationFuture(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Lcom/android/internal/infra/AndroidFuture;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p5

    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 634
    invoke-static {v2, p6}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mwrapProcessingFuture(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Lcom/android/internal/infra/AndroidFuture;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p6

    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetresourceClosingExecutor(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v3}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmInferenceInfoStore(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    move-result-object v3

    .line 635
    invoke-static {p7, v2, v0, v3, v1}, Lcom/android/server/ondeviceintelligence/BundleUtil;->wrapWithValidation(Landroid/app/ondeviceintelligence/IResponseCallback;Ljava/util/concurrent/Executor;Lcom/android/internal/infra/AndroidFuture;Lcom/android/server/ondeviceintelligence/InferenceInfoStore;Z)Landroid/app/ondeviceintelligence/IResponseCallback;

    move-result-object p7

    move v4, p4

    move-object p4, p1

    move-object p1, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move p5, v4

    .line 630
    invoke-interface/range {p1 .. p8}, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;->processRequest(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IResponseCallback;)V

    .line 638
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mgetIdleTimeoutMs(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)J

    move-result-wide p0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$processRequestStreaming$22(Landroid/os/Bundle;ILandroid/app/ondeviceintelligence/Feature;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IStreamingResponseCallback;Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)Lcom/android/internal/infra/AndroidFuture;
    .registers 14

    .line 688
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 689
    const-string/jumbo v1, "request_inference_info"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 692
    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 695
    invoke-static {v2, p5}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mwrapCancellationFuture(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Lcom/android/internal/infra/AndroidFuture;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p5

    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 696
    invoke-static {v2, p6}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mwrapProcessingFuture(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Lcom/android/internal/infra/AndroidFuture;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p6

    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetresourceClosingExecutor(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v3}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmInferenceInfoStore(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    move-result-object v3

    .line 697
    invoke-static {p7, v2, v0, v3, v1}, Lcom/android/server/ondeviceintelligence/BundleUtil;->wrapWithValidation(Landroid/app/ondeviceintelligence/IStreamingResponseCallback;Ljava/util/concurrent/Executor;Lcom/android/internal/infra/AndroidFuture;Lcom/android/server/ondeviceintelligence/InferenceInfoStore;Z)Landroid/app/ondeviceintelligence/IStreamingResponseCallback;

    move-result-object p7

    move v4, p4

    move-object p4, p1

    move-object p1, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move p5, v4

    .line 692
    invoke-interface/range {p1 .. p8}, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;->processRequestStreaming(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IStreamingResponseCallback;)V

    .line 700
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mgetIdleTimeoutMs(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)J

    move-result-wide p0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$requestFeatureDownload$12(Landroid/app/ondeviceintelligence/IDownloadCallback;ILandroid/app/ondeviceintelligence/Feature;Lcom/android/internal/infra/AndroidFuture;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)Lcom/android/internal/infra/AndroidFuture;
    .registers 12

    .line 522
    new-instance v3, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v3}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 523
    new-instance v0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;

    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmMainHandler(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 526
    invoke-static {v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mgetIdleTimeoutMs(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)J

    move-result-wide v4

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;-><init>(Landroid/app/ondeviceintelligence/IDownloadCallback;Landroid/os/Handler;Lcom/android/internal/infra/AndroidFuture;J)V

    .line 527
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 528
    invoke-static {p0, p4}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mwrapCancellationFuture(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Lcom/android/internal/infra/AndroidFuture;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    .line 527
    invoke-interface {p5, p2, p3, p0, v0}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;->requestFeatureDownload(ILandroid/app/ondeviceintelligence/Feature;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IDownloadCallback;)V

    return-object v3
.end method

.method public final synthetic lambda$requestTokenInfo$14(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/ITokenInfoCallback;Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)Lcom/android/internal/infra/AndroidFuture;
    .registers 10

    .line 569
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 570
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 572
    invoke-static {v1, p4}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mwrapCancellationFuture(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Lcom/android/internal/infra/AndroidFuture;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p4

    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmInferenceInfoStore(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    move-result-object v1

    .line 573
    invoke-static {p5, v0, v1}, Lcom/android/server/ondeviceintelligence/BundleUtil;->wrapWithValidation(Landroid/app/ondeviceintelligence/ITokenInfoCallback;Lcom/android/internal/infra/AndroidFuture;Lcom/android/server/ondeviceintelligence/InferenceInfoStore;)Landroid/app/ondeviceintelligence/ITokenInfoCallback;

    move-result-object p5

    move-object v2, p2

    move p2, p1

    move-object p1, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, v2

    .line 570
    invoke-interface/range {p1 .. p6}, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;->requestTokenInfo(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/ITokenInfoCallback;)V

    .line 575
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mgetIdleTimeoutMs(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)J

    move-result-wide p0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public listFeatures(Landroid/app/ondeviceintelligence/IListFeaturesCallback;)V
    .registers 5

    .line 339
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 340
    sget-object v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    const-string v2, "OnDeviceIntelligenceManagerInternal listFeatures"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    new-instance v1, Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor$Builder;

    invoke-direct {v1}, Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor$Builder;-><init>()V

    new-instance v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda2;-><init>(Landroid/app/ondeviceintelligence/IListFeaturesCallback;)V

    .line 343
    invoke-virtual {v1, v2}, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;->onFailure(Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureConsumer;)Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;

    move-result-object v1

    check-cast v1, Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor$Builder;

    .line 362
    invoke-virtual {v1}, Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor$Builder;->build()Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor;

    move-result-object v1

    .line 363
    new-instance v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;ILandroid/app/ondeviceintelligence/IListFeaturesCallback;)V

    invoke-virtual {v1, v2}, Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor;->execute(Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$RemoteCallRunner;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public listFeaturesWithFilter(Landroid/os/PersistableBundle;Landroid/app/ondeviceintelligence/IListFeaturesCallback;)V
    .registers 6

    .line 391
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 392
    sget-object v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    const-string v2, "OnDeviceIntelligenceManagerInternal listFeaturesWithFilter"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    new-instance v1, Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor$Builder;

    invoke-direct {v1}, Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor$Builder;-><init>()V

    new-instance v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda12;

    invoke-direct {v2, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda12;-><init>(Landroid/app/ondeviceintelligence/IListFeaturesCallback;)V

    .line 396
    invoke-virtual {v1, v2}, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;->onFailure(Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureConsumer;)Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;

    move-result-object v1

    check-cast v1, Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor$Builder;

    .line 415
    invoke-virtual {v1}, Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor$Builder;->build()Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor;

    move-result-object v1

    .line 416
    new-instance v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;ILandroid/os/PersistableBundle;Landroid/app/ondeviceintelligence/IListFeaturesCallback;)V

    invoke-virtual {v1, v2}, Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor;->execute(Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$RemoteCallRunner;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 717
    new-instance v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceShellCommand;

    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceShellCommand;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 718
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public processRequest(Landroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IResponseCallback;)V
    .registers 18

    .line 598
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v9, 0x0

    .line 600
    :try_start_5
    sget-object v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    const-string v1, "OnDeviceIntelligenceManagerInternal processRequest"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    invoke-static {p2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->sanitizeInferenceParams(Landroid/os/Bundle;)V

    .line 603
    invoke-static/range {p6 .. p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    new-instance v0, Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor$Builder;

    invoke-direct {v0}, Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor$Builder;-><init>()V

    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda16;

    move-object/from16 v8, p6

    invoke-direct {v1, v8}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda16;-><init>(Landroid/app/ondeviceintelligence/IResponseCallback;)V

    .line 605
    invoke-virtual {v0, v1}, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;->onFailure(Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureConsumer;)Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor$Builder;

    .line 624
    invoke-virtual {v0}, Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor$Builder;->build()Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor;

    move-result-object v10

    .line 625
    new-instance v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda17;

    move-object v1, p0

    move-object v4, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;Landroid/os/Bundle;ILandroid/app/ondeviceintelligence/Feature;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IResponseCallback;)V

    invoke-virtual {v10, v0}, Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor;->execute(Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$RemoteCallRunner;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v9

    if-eqz v9, :cond_4f

    .line 642
    new-instance p1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda18;

    invoke-direct {p1, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda18;-><init>(Landroid/os/Bundle;)V

    iget-object p3, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p3}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetresourceClosingExecutor(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-virtual {v9, p1, p3}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;
    :try_end_4b
    .catchall {:try_start_5 .. :try_end_4b} :catchall_4c

    goto :goto_4f

    :catchall_4c
    move-exception v0

    move-object p1, v0

    goto :goto_60

    :cond_4f
    :goto_4f
    if-nez v9, :cond_5f

    .line 647
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetresourceClosingExecutor(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance p1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda19;

    invoke-direct {p1, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda19;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_5f
    return-void

    :goto_60
    if-nez v9, :cond_70

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetresourceClosingExecutor(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance p3, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda19;

    invoke-direct {p3, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda19;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p0, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 649
    :cond_70
    throw p1
.end method

.method public processRequestStreaming(Landroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IStreamingResponseCallback;)V
    .registers 18

    .line 660
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v9, 0x0

    .line 662
    :try_start_5
    sget-object v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    const-string v1, "OnDeviceIntelligenceManagerInternal processRequestStreaming"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    invoke-static {p2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->sanitizeInferenceParams(Landroid/os/Bundle;)V

    .line 665
    invoke-static/range {p6 .. p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    new-instance v0, Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor$Builder;

    invoke-direct {v0}, Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor$Builder;-><init>()V

    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda8;

    move-object/from16 v8, p6

    invoke-direct {v1, v8}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda8;-><init>(Landroid/app/ondeviceintelligence/IStreamingResponseCallback;)V

    .line 667
    invoke-virtual {v0, v1}, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;->onFailure(Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureConsumer;)Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor$Builder;

    .line 686
    invoke-virtual {v0}, Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor$Builder;->build()Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor;

    move-result-object v10

    .line 687
    new-instance v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda9;

    move-object v1, p0

    move-object v4, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;Landroid/os/Bundle;ILandroid/app/ondeviceintelligence/Feature;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IStreamingResponseCallback;)V

    invoke-virtual {v10, v0}, Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor;->execute(Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$RemoteCallRunner;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v9

    if-eqz v9, :cond_4f

    .line 704
    new-instance p1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda10;

    invoke-direct {p1, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda10;-><init>(Landroid/os/Bundle;)V

    iget-object p3, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p3}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetresourceClosingExecutor(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-virtual {v9, p1, p3}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;
    :try_end_4b
    .catchall {:try_start_5 .. :try_end_4b} :catchall_4c

    goto :goto_4f

    :catchall_4c
    move-exception v0

    move-object p1, v0

    goto :goto_60

    :cond_4f
    :goto_4f
    if-nez v9, :cond_5f

    .line 709
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetresourceClosingExecutor(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance p1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda11;

    invoke-direct {p1, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda11;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_5f
    return-void

    :goto_60
    if-nez v9, :cond_70

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetresourceClosingExecutor(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance p3, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda11;

    invoke-direct {p3, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda11;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p0, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 711
    :cond_70
    throw p1
.end method

.method public registerInferenceServiceLifecycleListener(Landroid/app/ondeviceintelligence/ILifecycleListener;)V
    .registers 5

    .line 757
    sget-object v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    const-string v1, "OnDeviceIntelligenceManagerInternalregisterInferenceServiceLifecycleListener"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmContext(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.USE_ON_DEVICE_INTELLIGENCE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    iget-boolean v1, v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mIsServiceEnabled:Z

    if-nez v1, :cond_21

    .line 763
    const-string p0, "Service not available, not registering lifecycle listener."

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 766
    :cond_21
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmLifecycleListeners(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public requestFeatureDownload(Landroid/app/ondeviceintelligence/Feature;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IDownloadCallback;)V
    .registers 11

    .line 497
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 498
    sget-object v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    const-string v1, "OnDeviceIntelligenceManagerInternal requestFeatureDownload"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    new-instance v0, Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor$Builder;

    invoke-direct {v0}, Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor$Builder;-><init>()V

    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda0;-><init>(Landroid/app/ondeviceintelligence/IDownloadCallback;)V

    .line 502
    invoke-virtual {v0, v1}, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;->onFailure(Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureConsumer;)Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor$Builder;

    .line 520
    invoke-virtual {v0}, Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor$Builder;->build()Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor;

    move-result-object v6

    new-instance v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;Landroid/app/ondeviceintelligence/IDownloadCallback;ILandroid/app/ondeviceintelligence/Feature;Lcom/android/internal/infra/AndroidFuture;)V

    .line 521
    invoke-virtual {v6, v0}, Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor;->execute(Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$RemoteCallRunner;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public requestTokenInfo(Landroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/ITokenInfoCallback;)V
    .registers 14

    .line 540
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 541
    sget-object v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    const-string v1, "OnDeviceIntelligenceManagerInternal requestTokenInfo"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    .line 544
    :try_start_c
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    invoke-static {p2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->sanitizeInferenceParams(Landroid/os/Bundle;)V

    .line 546
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    new-instance v0, Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor$Builder;

    invoke-direct {v0}, Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor$Builder;-><init>()V

    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda20;

    invoke-direct {v1, p4}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda20;-><init>(Landroid/app/ondeviceintelligence/ITokenInfoCallback;)V

    .line 548
    invoke-virtual {v0, v1}, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;->onFailure(Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureConsumer;)Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor$Builder;

    .line 567
    invoke-virtual {v0}, Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor$Builder;->build()Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor;

    move-result-object v8

    .line 568
    new-instance v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda21;
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_5c

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    :try_start_30
    invoke-direct/range {v0 .. v6}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/ITokenInfoCallback;)V

    invoke-virtual {v8, v0}, Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor;->execute(Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$RemoteCallRunner;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v7

    if-eqz v7, :cond_4b

    .line 579
    new-instance p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda22;

    invoke-direct {p0, v4}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda22;-><init>(Landroid/os/Bundle;)V

    iget-object p1, v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetresourceClosingExecutor(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {v7, p0, p1}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;
    :try_end_47
    .catchall {:try_start_30 .. :try_end_47} :catchall_48

    goto :goto_4b

    :catchall_48
    move-exception v0

    :goto_49
    move-object p0, v0

    goto :goto_60

    :cond_4b
    :goto_4b
    if-nez v7, :cond_5b

    .line 584
    iget-object p0, v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetresourceClosingExecutor(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance p1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda23;

    invoke-direct {p1, v4}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda23;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_5b
    return-void

    :catchall_5c
    move-exception v0

    move-object v1, p0

    move-object v4, p2

    goto :goto_49

    :goto_60
    if-nez v7, :cond_70

    iget-object p1, v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetresourceClosingExecutor(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda23;

    invoke-direct {p2, v4}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda23;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 586
    :cond_70
    throw p0
.end method

.method public unregisterInferenceServiceLifecycleListener(Landroid/app/ondeviceintelligence/ILifecycleListener;)V
    .registers 5

    .line 771
    sget-object v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    const-string v1, "OnDeviceIntelligenceManagerInternal unregisterInferenceServiceLifecycleListener"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmContext(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.USE_ON_DEVICE_INTELLIGENCE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    iget-boolean v1, v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mIsServiceEnabled:Z

    if-nez v1, :cond_21

    .line 777
    const-string p0, "Service not available, not unregistering lifecycle listener."

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 780
    :cond_21
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmLifecycleListeners(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method
