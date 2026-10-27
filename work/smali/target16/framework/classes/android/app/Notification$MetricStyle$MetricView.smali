.class final Landroid/app/Notification$MetricStyle$MetricView;
.super Ljava/lang/Record;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$MetricStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MetricView"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {},
        {},
        {}
    }
    componentNames = {
        "containerId",
        "labelId",
        "textValueId",
        "chronometerId",
        "unitId"
    }
    componentSignatures = {
        null,
        null,
        null,
        null,
        null
    }
    componentTypes = {
        I,
        I,
        I,
        I,
        I
    }
.end annotation


# static fields
.field private static final blacklist VIEWS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Notification$MetricStyle$MetricView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist chronometerId:I

.field private final blacklist containerId:I

.field private final blacklist labelId:I

.field private final blacklist textValueId:I

.field private final blacklist unitId:I


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Landroid/app/Notification$MetricStyle$MetricView;

    if-eqz v0, :cond_26

    check-cast p1, Landroid/app/Notification$MetricStyle$MetricView;

    iget v0, p0, Landroid/app/Notification$MetricStyle$MetricView;->containerId:I

    iget v1, p1, Landroid/app/Notification$MetricStyle$MetricView;->containerId:I

    if-ne v0, v1, :cond_26

    iget v0, p0, Landroid/app/Notification$MetricStyle$MetricView;->labelId:I

    iget v1, p1, Landroid/app/Notification$MetricStyle$MetricView;->labelId:I

    if-ne v0, v1, :cond_26

    iget v0, p0, Landroid/app/Notification$MetricStyle$MetricView;->textValueId:I

    iget v1, p1, Landroid/app/Notification$MetricStyle$MetricView;->textValueId:I

    if-ne v0, v1, :cond_26

    iget v0, p0, Landroid/app/Notification$MetricStyle$MetricView;->chronometerId:I

    iget v1, p1, Landroid/app/Notification$MetricStyle$MetricView;->chronometerId:I

    if-ne v0, v1, :cond_26

    iget v0, p0, Landroid/app/Notification$MetricStyle$MetricView;->unitId:I

    iget p1, p1, Landroid/app/Notification$MetricStyle$MetricView;->unitId:I

    if-ne v0, p1, :cond_26

    const/4 p1, 0x1

    return p1

    :cond_26
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic blacklist $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 6

    iget v0, p0, Landroid/app/Notification$MetricStyle$MetricView;->containerId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/app/Notification$MetricStyle$MetricView;->labelId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/app/Notification$MetricStyle$MetricView;->textValueId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/app/Notification$MetricStyle$MetricView;->chronometerId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/app/Notification$MetricStyle$MetricView;->unitId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetVIEWS()Ljava/util/List;
    .registers 1

    sget-object v0, Landroid/app/Notification$MetricStyle$MetricView;->VIEWS:Ljava/util/List;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 8

    .line 11940
    new-instance v0, Landroid/app/Notification$MetricStyle$MetricView;

    const v4, 0x10203eb

    const v5, 0x10203f1

    const v1, 0x10203f7

    const v2, 0x10203ee

    const v3, 0x10203f4

    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$MetricStyle$MetricView;-><init>(IIIII)V

    new-instance v1, Landroid/app/Notification$MetricStyle$MetricView;

    const v5, 0x10203ec

    const v6, 0x10203f2

    const v2, 0x10203f8

    const v3, 0x10203ef

    const v4, 0x10203f5

    invoke-direct/range {v1 .. v6}, Landroid/app/Notification$MetricStyle$MetricView;-><init>(IIIII)V

    new-instance v2, Landroid/app/Notification$MetricStyle$MetricView;

    const v6, 0x10203ed

    const v7, 0x10203f3

    const v3, 0x10203f9

    const v4, 0x10203f0

    const v5, 0x10203f6

    invoke-direct/range {v2 .. v7}, Landroid/app/Notification$MetricStyle$MetricView;-><init>(IIIII)V

    invoke-static {v0, v1, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/app/Notification$MetricStyle$MetricView;->VIEWS:Ljava/util/List;

    return-void
.end method

.method private constructor blacklist <init>(IIIII)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "containerId",
            "labelId",
            "textValueId",
            "chronometerId",
            "unitId"
        }
    .end annotation

    .line 11935
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Landroid/app/Notification$MetricStyle$MetricView;->containerId:I

    iput p2, p0, Landroid/app/Notification$MetricStyle$MetricView;->labelId:I

    iput p3, p0, Landroid/app/Notification$MetricStyle$MetricView;->textValueId:I

    iput p4, p0, Landroid/app/Notification$MetricStyle$MetricView;->chronometerId:I

    iput p5, p0, Landroid/app/Notification$MetricStyle$MetricView;->unitId:I

    return-void
.end method


# virtual methods
.method public blacklist chronometerId()I
    .registers 2

    .line 11935
    iget v0, p0, Landroid/app/Notification$MetricStyle$MetricView;->chronometerId:I

    return v0
.end method

.method public blacklist containerId()I
    .registers 2

    .line 11935
    iget v0, p0, Landroid/app/Notification$MetricStyle$MetricView;->containerId:I

    return v0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 2

    .line 11935
    invoke-direct {p0, p1}, Landroid/app/Notification$MetricStyle$MetricView;->$record$equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final whitelist test-api hashCode()I
    .registers 6

    .line 11935
    iget v0, p0, Landroid/app/Notification$MetricStyle$MetricView;->containerId:I

    iget v1, p0, Landroid/app/Notification$MetricStyle$MetricView;->labelId:I

    iget v2, p0, Landroid/app/Notification$MetricStyle$MetricView;->textValueId:I

    iget v3, p0, Landroid/app/Notification$MetricStyle$MetricView;->chronometerId:I

    iget v4, p0, Landroid/app/Notification$MetricStyle$MetricView;->unitId:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/Notification$MetricStyle$MetricView$$ExternalSyntheticRecord0;->m(IIIII)I

    move-result v0

    return v0
.end method

.method public blacklist labelId()I
    .registers 2

    .line 11935
    iget v0, p0, Landroid/app/Notification$MetricStyle$MetricView;->labelId:I

    return v0
.end method

.method public blacklist textValueId()I
    .registers 2

    .line 11935
    iget v0, p0, Landroid/app/Notification$MetricStyle$MetricView;->textValueId:I

    return v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 11935
    invoke-direct {p0}, Landroid/app/Notification$MetricStyle$MetricView;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Landroid/app/Notification$MetricStyle$MetricView;

    const-string v2, "containerId;labelId;textValueId;chronometerId;unitId"

    invoke-static {v0, v1, v2}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist unitId()I
    .registers 2

    .line 11935
    iget v0, p0, Landroid/app/Notification$MetricStyle$MetricView;->unitId:I

    return v0
.end method
