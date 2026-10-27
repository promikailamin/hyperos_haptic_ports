.class public final synthetic Lcom/android/settingslib/devicestate/PostureDeviceStateConverter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/devicestate/PostureDeviceStateConverter$$ExternalSyntheticLambda1;->f$0:Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/settingslib/devicestate/PostureDeviceStateConverter$$ExternalSyntheticLambda1;->f$0:Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;

    check-cast p1, Landroid/hardware/devicestate/DeviceState;

    invoke-static {p0, p1}, Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;->$r8$lambda$y95WvdMLtsOJ-bmtzyz9HZkTvGA(Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;Landroid/hardware/devicestate/DeviceState;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
