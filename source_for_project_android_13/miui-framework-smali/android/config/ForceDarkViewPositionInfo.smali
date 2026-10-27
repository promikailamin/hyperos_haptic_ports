.class public Landroid/config/ForceDarkViewPositionInfo;
.super Ljava/lang/Object;
.source "ForceDarkViewPositionInfo.java"


# static fields
.field public static final blacklist USAGE_UNSET:I = -0x1


# instance fields
.field private blacklist id:Ljava/lang/String;

.field private blacklist index:I

.field private blacklist parent:I

.field private blacklist viewName:Ljava/lang/String;

.field private blacklist xmlIndexId:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Landroid/config/ForceDarkViewPositionInfo;->index:I

    return-void
.end method


# virtual methods
.method public blacklist getId()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Landroid/config/ForceDarkViewPositionInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getIndex()I
    .registers 2

    .line 35
    iget v0, p0, Landroid/config/ForceDarkViewPositionInfo;->index:I

    return v0
.end method

.method public blacklist getParent()I
    .registers 2

    .line 27
    iget v0, p0, Landroid/config/ForceDarkViewPositionInfo;->parent:I

    return v0
.end method

.method public blacklist getViewName()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Landroid/config/ForceDarkViewPositionInfo;->viewName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getXmlIndexId()Ljava/lang/String;
    .registers 2

    .line 51
    iget-object v0, p0, Landroid/config/ForceDarkViewPositionInfo;->xmlIndexId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setId(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Landroid/config/ForceDarkViewPositionInfo;->id:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public blacklist setIndex(I)V
    .registers 2
    .param p1, "index"    # I

    .line 39
    iput p1, p0, Landroid/config/ForceDarkViewPositionInfo;->index:I

    .line 40
    return-void
.end method

.method public blacklist setParent(I)V
    .registers 2
    .param p1, "parent"    # I

    .line 31
    iput p1, p0, Landroid/config/ForceDarkViewPositionInfo;->parent:I

    .line 32
    return-void
.end method

.method public blacklist setViewName(Ljava/lang/String;)V
    .registers 2
    .param p1, "viewName"    # Ljava/lang/String;

    .line 23
    iput-object p1, p0, Landroid/config/ForceDarkViewPositionInfo;->viewName:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public blacklist setXmlIndexId(Ljava/lang/String;)V
    .registers 2
    .param p1, "xmlIndexId"    # Ljava/lang/String;

    .line 55
    iput-object p1, p0, Landroid/config/ForceDarkViewPositionInfo;->xmlIndexId:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ForceDarkViewPositionInfo{viewName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/config/ForceDarkViewPositionInfo;->viewName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", parent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/config/ForceDarkViewPositionInfo;->parent:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", index="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/config/ForceDarkViewPositionInfo;->index:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/config/ForceDarkViewPositionInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
