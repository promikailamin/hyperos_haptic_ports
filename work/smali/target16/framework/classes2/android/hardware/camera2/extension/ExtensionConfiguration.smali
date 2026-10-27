.class public Landroid/hardware/camera2/extension/ExtensionConfiguration;
.super Ljava/lang/Object;
.source "ExtensionConfiguration.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private blacklist mColorSpace:I

.field private final blacklist mOutputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

.field private final blacklist mSessionTemplateId:I

.field private final blacklist mSessionType:I


# direct methods
.method public constructor whitelist <init>(IILjava/util/List;Landroid/hardware/camera2/CaptureRequest;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CaptureRequest;",
            ")V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Landroid/hardware/camera2/extension/ExtensionConfiguration;->mSessionType:I

    .line 72
    iput p2, p0, Landroid/hardware/camera2/extension/ExtensionConfiguration;->mSessionTemplateId:I

    .line 73
    iput-object p3, p0, Landroid/hardware/camera2/extension/ExtensionConfiguration;->mOutputs:Ljava/util/List;

    .line 74
    iput-object p4, p0, Landroid/hardware/camera2/extension/ExtensionConfiguration;->mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

    .line 75
    const/4 p1, -0x1

    iput p1, p0, Landroid/hardware/camera2/extension/ExtensionConfiguration;->mColorSpace:I

    .line 76
    return-void
.end method


# virtual methods
.method blacklist getCameraSessionConfig()Landroid/hardware/camera2/extension/CameraSessionConfig;
    .registers 5

    .line 89
    iget-object v0, p0, Landroid/hardware/camera2/extension/ExtensionConfiguration;->mOutputs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 90
    const/4 v0, 0x0

    return-object v0

    .line 93
    :cond_a
    new-instance v0, Landroid/hardware/camera2/extension/CameraSessionConfig;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/CameraSessionConfig;-><init>()V

    .line 94
    iget v1, p0, Landroid/hardware/camera2/extension/ExtensionConfiguration;->mSessionTemplateId:I

    iput v1, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->sessionTemplateId:I

    .line 95
    iget v1, p0, Landroid/hardware/camera2/extension/ExtensionConfiguration;->mSessionType:I

    iput v1, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->sessionType:I

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/hardware/camera2/extension/ExtensionConfiguration;->mOutputs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->outputConfigs:Ljava/util/List;

    .line 97
    iget v1, p0, Landroid/hardware/camera2/extension/ExtensionConfiguration;->mColorSpace:I

    iput v1, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->colorSpace:I

    .line 98
    iget-object v1, p0, Landroid/hardware/camera2/extension/ExtensionConfiguration;->mOutputs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;

    .line 99
    iget-object v3, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->outputConfigs:Ljava/util/List;

    invoke-virtual {v2}, Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;->getOutputConfig()Landroid/hardware/camera2/extension/CameraOutputConfig;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    goto :goto_2e

    .line 101
    :cond_44
    iget-object v1, p0, Landroid/hardware/camera2/extension/ExtensionConfiguration;->mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

    if-eqz v1, :cond_50

    .line 102
    iget-object v1, p0, Landroid/hardware/camera2/extension/ExtensionConfiguration;->mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->sessionParameter:Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 105
    :cond_50
    return-object v0
.end method

.method public whitelist setColorSpace(I)V
    .registers 2

    .line 85
    iput p1, p0, Landroid/hardware/camera2/extension/ExtensionConfiguration;->mColorSpace:I

    .line 86
    return-void
.end method
