.class public final Lcom/android/server/display/DisplayManagerService$DisplayInfoChangedFields;
.super Ljava/lang/Record;
.source "DisplayManagerService.java"


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
        "changedGroups",
        "source"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        I,
        Landroid/view/DisplayInfo$DisplayInfoChangeSource;
    }
.end annotation


# instance fields
.field public final changedGroups:I

.field public final source:Landroid/view/DisplayInfo$DisplayInfoChangeSource;


# direct methods
.method public constructor <init>(ILandroid/view/DisplayInfo$DisplayInfoChangeSource;)V
    .registers 3

    .line 6599
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Lcom/android/server/display/DisplayManagerService$DisplayInfoChangedFields;->changedGroups:I

    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$DisplayInfoChangedFields;->source:Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    return-void
.end method

.method public synthetic constructor <init>(ILandroid/view/DisplayInfo$DisplayInfoChangeSource;Lcom/android/server/display/DisplayManagerService-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService$DisplayInfoChangedFields;-><init>(ILandroid/view/DisplayInfo$DisplayInfoChangeSource;)V

    return-void
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    instance-of v0, p1, Lcom/android/server/display/DisplayManagerService$DisplayInfoChangedFields;

    if-eqz v0, :cond_18

    check-cast p1, Lcom/android/server/display/DisplayManagerService$DisplayInfoChangedFields;

    iget v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayInfoChangedFields;->changedGroups:I

    iget v1, p1, Lcom/android/server/display/DisplayManagerService$DisplayInfoChangedFields;->changedGroups:I

    if-ne v0, v1, :cond_18

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayInfoChangedFields;->source:Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    iget-object p1, p1, Lcom/android/server/display/DisplayManagerService$DisplayInfoChangedFields;->source:Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 4

    .line 0
    iget v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayInfoChangedFields;->changedGroups:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayInfoChangedFields;->source:Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    return-object v1
.end method

.method public changedGroups()I
    .registers 1

    .line 6599
    iget p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayInfoChangedFields;->changedGroups:I

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 6599
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService$DisplayInfoChangedFields;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 2

    .line 6599
    iget v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayInfoChangedFields;->changedGroups:I

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayInfoChangedFields;->source:Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    invoke-static {v0, p0}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord0;->m(ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public source()Landroid/view/DisplayInfo$DisplayInfoChangeSource;
    .registers 1

    .line 6599
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayInfoChangedFields;->source:Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 6599
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$DisplayInfoChangedFields;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/android/server/display/DisplayManagerService$DisplayInfoChangedFields;

    const-string v1, "changedGroups;source"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
