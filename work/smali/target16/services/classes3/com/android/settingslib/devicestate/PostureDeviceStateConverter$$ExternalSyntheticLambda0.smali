.class public final synthetic Lcom/android/settingslib/devicestate/PostureDeviceStateConverter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/devicestate/PostureDeviceStateConverter$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/settingslib/devicestate/PostureDeviceStateConverter$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;

    check-cast p1, Landroid/hardware/devicestate/DeviceState;

    invoke-static {p0, p1}, Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;->$r8$lambda$0YJ3tCF3rACPd7I8iuKNszKmP6A(Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;Landroid/hardware/devicestate/DeviceState;)Z

    move-result p0

    return p0
.end method
