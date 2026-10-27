.class public abstract Landroid/hardware/radio/RadioTuner$Callback;
.super Ljava/lang/Object;
.source "RadioTuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioTuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAntennaState(Z)V
    .registers 2

    .line 736
    return-void
.end method

.method public whitelist onBackgroundScanAvailabilityChange(Z)V
    .registers 2

    .line 757
    return-void
.end method

.method public whitelist onBackgroundScanComplete()V
    .registers 1

    .line 762
    return-void
.end method

.method public whitelist onConfigFlagUpdated(IZ)V
    .registers 3

    .line 781
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 706
    return-void
.end method

.method public whitelist onControlChanged(Z)V
    .registers 2

    .line 748
    return-void
.end method

.method public whitelist onEmergencyAnnouncement(Z)V
    .registers 2

    .line 732
    return-void
.end method

.method public whitelist onError(I)V
    .registers 2

    .line 687
    return-void
.end method

.method public whitelist onMetadataChanged(Landroid/hardware/radio/RadioMetadata;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 723
    return-void
.end method

.method public whitelist onParametersUpdated(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 797
    return-void
.end method

.method public whitelist onProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .registers 2

    .line 715
    return-void
.end method

.method public whitelist onProgramListChanged()V
    .registers 1

    .line 769
    return-void
.end method

.method public whitelist onTrafficAnnouncement(Z)V
    .registers 2

    .line 728
    return-void
.end method

.method public whitelist onTuneFailed(ILandroid/hardware/radio/ProgramSelector;)V
    .registers 3

    .line 696
    return-void
.end method
