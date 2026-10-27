.class public final Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;
.super Ljava/lang/Record;
.source "DeviceStateAutoRotateSettingManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {}
    }
    componentNames = {
        "posture",
        "autoRotateValue",
        "fallbackPosture"
    }
    componentSignatures = {
        null,
        null,
        null
    }
    componentTypes = {
        I,
        I,
        Ljava/lang/Integer;
    }
.end annotation


# instance fields
.field public final autoRotateValue:I

.field public final fallbackPosture:Ljava/lang/Integer;

.field public final posture:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetautoRotateValue(Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;->autoRotateValue:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetfallbackPosture(Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;)Ljava/lang/Integer;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;->fallbackPosture:Ljava/lang/Integer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetposture(Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;->posture:I

    return p0
.end method

.method public constructor <init>(IILjava/lang/Integer;)V
    .registers 4

    .line 503
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;->posture:I

    iput p2, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;->autoRotateValue:I

    iput-object p3, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;->fallbackPosture:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/Integer;Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl-IA;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;-><init>(IILjava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    instance-of v0, p1, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;

    if-eqz v0, :cond_1e

    check-cast p1, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;

    iget v0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;->posture:I

    iget v1, p1, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;->posture:I

    if-ne v0, v1, :cond_1e

    iget v0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;->autoRotateValue:I

    iget v1, p1, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;->autoRotateValue:I

    if-ne v0, v1, :cond_1e

    iget-object p0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;->fallbackPosture:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;->fallbackPosture:Ljava/lang/Integer;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 5

    .line 0
    iget v0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;->posture:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;->autoRotateValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;->fallbackPosture:Ljava/lang/Integer;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p0, v2, v0

    return-object v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 503
    invoke-virtual {p0, p1}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 3

    .line 503
    iget v0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;->posture:I

    iget v1, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;->autoRotateValue:I

    iget-object p0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;->fallbackPosture:Ljava/lang/Integer;

    invoke-static {v0, v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest$$ExternalSyntheticRecord0;->m(IILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 503
    invoke-virtual {p0}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;

    const-string v1, "posture;autoRotateValue;fallbackPosture"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
