.class public Lcom/android/server/display/layout/Layout$Display;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/layout/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Display"
.end annotation


# instance fields
.field private final mAddress:Landroid/view/DisplayAddress;

.field private final mIsEnabled:Z

.field private final mLogicalDisplayId:I


# direct methods
.method constructor <init>(Landroid/view/DisplayAddress;IZ)V
    .registers 4
    .param p1, "address"    # Landroid/view/DisplayAddress;
    .param p2, "logicalDisplayId"    # I
    .param p3, "isEnabled"    # Z

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    .line 213
    iput p2, p0, Lcom/android/server/display/layout/Layout$Display;->mLogicalDisplayId:I

    .line 214
    iput-boolean p3, p0, Lcom/android/server/display/layout/Layout$Display;->mIsEnabled:Z

    .line 215
    return-void
.end method


# virtual methods
.method public getAddress()Landroid/view/DisplayAddress;
    .registers 2

    .line 224
    iget-object v0, p0, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    return-object v0
.end method

.method public getLogicalDisplayId()I
    .registers 2

    .line 228
    iget v0, p0, Lcom/android/server/display/layout/Layout$Display;->mLogicalDisplayId:I

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 232
    iget-boolean v0, p0, Lcom/android/server/display/layout/Layout$Display;->mIsEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{addr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dispId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/layout/Layout$Display;->mLogicalDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 220
    iget-boolean v1, p0, Lcom/android/server/display/layout/Layout$Display;->mIsEnabled:Z

    if-eqz v1, :cond_2b

    const-string v1, "ON"

    goto :goto_2d

    :cond_2b
    const-string v1, "OFF"

    :goto_2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    return-object v0
.end method
