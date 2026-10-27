.class public final Lcom/android/settingslib/devicestate/SettableDeviceState;
.super Ljava/lang/Record;
.source "SettableDeviceState.java"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {}
    }
    componentAnnotations = {
        {},
        {}
    }
    componentNames = {
        "deviceState",
        "isSettable"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        I,
        Z
    }
.end annotation


# instance fields
.field public final deviceState:I

.field public final isSettable:Z


# direct methods
.method public constructor <init>(IZ)V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Lcom/android/settingslib/devicestate/SettableDeviceState;->deviceState:I

    iput-boolean p2, p0, Lcom/android/settingslib/devicestate/SettableDeviceState;->isSettable:Z

    return-void
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    instance-of v0, p1, Lcom/android/settingslib/devicestate/SettableDeviceState;

    if-eqz v0, :cond_14

    check-cast p1, Lcom/android/settingslib/devicestate/SettableDeviceState;

    iget-boolean v0, p0, Lcom/android/settingslib/devicestate/SettableDeviceState;->isSettable:Z

    iget-boolean v1, p1, Lcom/android/settingslib/devicestate/SettableDeviceState;->isSettable:Z

    if-ne v0, v1, :cond_14

    iget p0, p0, Lcom/android/settingslib/devicestate/SettableDeviceState;->deviceState:I

    iget p1, p1, Lcom/android/settingslib/devicestate/SettableDeviceState;->deviceState:I

    if-ne p0, p1, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 4

    .line 0
    iget v0, p0, Lcom/android/settingslib/devicestate/SettableDeviceState;->deviceState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/settingslib/devicestate/SettableDeviceState;->isSettable:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/settingslib/devicestate/SettableDeviceState;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 2

    .line 22
    iget-boolean v0, p0, Lcom/android/settingslib/devicestate/SettableDeviceState;->isSettable:Z

    iget p0, p0, Lcom/android/settingslib/devicestate/SettableDeviceState;->deviceState:I

    invoke-static {v0, p0}, Lcom/android/settingslib/devicestate/SettableDeviceState$$ExternalSyntheticRecord0;->m(ZI)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 22
    invoke-virtual {p0}, Lcom/android/settingslib/devicestate/SettableDeviceState;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/android/settingslib/devicestate/SettableDeviceState;

    const-string v1, "deviceState;isSettable"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
