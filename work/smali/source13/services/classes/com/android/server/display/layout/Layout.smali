.class public Lcom/android/server/display/layout/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/layout/Layout$Display;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Layout"

.field private static sFoldableNonDefaultDisplayId:I

.field private static sNextNonDefaultDisplayId:I


# instance fields
.field private final mDisplays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/layout/Layout$Display;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsFoldable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    const/4 v0, 0x1

    sput v0, Lcom/android/server/display/layout/Layout;->sNextNonDefaultDisplayId:I

    .line 43
    const/4 v0, -0x1

    sput v0, Lcom/android/server/display/layout/Layout;->sFoldableNonDefaultDisplayId:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string/jumbo v0, "persist.sys.muiltdisplay_type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_f

    const/4 v1, 0x1

    :cond_f
    iput-boolean v1, p0, Lcom/android/server/display/layout/Layout;->mIsFoldable:Z

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    return-void
.end method

.method public static assignDisplayIdLocked(Z)I
    .registers 3
    .param p0, "isDefault"    # Z

    .line 52
    if-eqz p0, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    sget v0, Lcom/android/server/display/layout/Layout;->sNextNonDefaultDisplayId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/display/layout/Layout;->sNextNonDefaultDisplayId:I

    :goto_a
    return v0
.end method

.method public static assignDisplayIdLocked(ZLandroid/view/DisplayAddress;)I
    .registers 5
    .param p0, "isDefault"    # Z
    .param p1, "address"    # Landroid/view/DisplayAddress;

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "isDisplayBuiltIn":Z
    instance-of v1, p1, Landroid/view/DisplayAddress$Physical;

    if-eqz v1, :cond_12

    .line 58
    move-object v1, p1

    check-cast v1, Landroid/view/DisplayAddress$Physical;

    .line 59
    invoke-virtual {v1}, Landroid/view/DisplayAddress$Physical;->getPort()I

    move-result v1

    if-gez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    move v0, v1

    .line 61
    :cond_12
    if-nez p0, :cond_1d

    if-eqz v0, :cond_1d

    .line 62
    sget v1, Lcom/android/server/display/layout/Layout;->sNextNonDefaultDisplayId:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/android/server/display/layout/Layout;->sNextNonDefaultDisplayId:I

    return v1

    .line 65
    :cond_1d
    invoke-static {p0}, Lcom/android/server/display/layout/Layout;->assignDisplayIdLocked(Z)I

    move-result v1

    return v1
.end method

.method private static assignFoldableDisplayIdLocked(Z)I
    .registers 3
    .param p0, "isDefault"    # Z

    .line 70
    if-eqz p0, :cond_4

    .line 71
    const/4 v0, 0x0

    return v0

    .line 73
    :cond_4
    sget v0, Lcom/android/server/display/layout/Layout;->sFoldableNonDefaultDisplayId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 74
    sget v0, Lcom/android/server/display/layout/Layout;->sNextNonDefaultDisplayId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/display/layout/Layout;->sNextNonDefaultDisplayId:I

    sput v0, Lcom/android/server/display/layout/Layout;->sFoldableNonDefaultDisplayId:I

    .line 76
    :cond_11
    sget v0, Lcom/android/server/display/layout/Layout;->sFoldableNonDefaultDisplayId:I

    return v0
.end method


# virtual methods
.method public contains(Landroid/view/DisplayAddress;)Z
    .registers 5
    .param p1, "address"    # Landroid/view/DisplayAddress;

    .line 141
    iget-object v0, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 142
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_20

    .line 143
    iget-object v2, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/layout/Layout$Display;

    invoke-virtual {v2}, Lcom/android/server/display/layout/Layout$Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 144
    const/4 v2, 0x1

    return v2

    .line 142
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 147
    .end local v1    # "i":I
    :cond_20
    const/4 v1, 0x0

    return v1
.end method

.method public createDisplayLocked(Landroid/view/DisplayAddress;ZZ)Lcom/android/server/display/layout/Layout$Display;
    .registers 8
    .param p1, "address"    # Landroid/view/DisplayAddress;
    .param p2, "isDefault"    # Z
    .param p3, "isEnabled"    # Z

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/display/layout/Layout;->contains(Landroid/view/DisplayAddress;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Layout"

    if-eqz v0, :cond_20

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to add second definition for display-device: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-object v1

    .line 101
    :cond_20
    if-eqz p2, :cond_40

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/display/layout/Layout;->getById(I)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring attempt to add a second default display: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-object v1

    .line 113
    :cond_40
    iget-boolean v0, p0, Lcom/android/server/display/layout/Layout;->mIsFoldable:Z

    if-eqz v0, :cond_49

    .line 114
    invoke-static {p2}, Lcom/android/server/display/layout/Layout;->assignFoldableDisplayIdLocked(Z)I

    move-result v0

    .local v0, "logicalDisplayId":I
    goto :goto_4d

    .line 116
    .end local v0    # "logicalDisplayId":I
    :cond_49
    invoke-static {p2}, Lcom/android/server/display/layout/Layout;->assignDisplayIdLocked(Z)I

    move-result v0

    .line 119
    .restart local v0    # "logicalDisplayId":I
    :goto_4d
    new-instance v1, Lcom/android/server/display/layout/Layout$Display;

    invoke-direct {v1, p1, v0, p3}, Lcom/android/server/display/layout/Layout$Display;-><init>(Landroid/view/DisplayAddress;IZ)V

    .line 121
    .local v1, "display":Lcom/android/server/display/layout/Layout$Display;
    iget-object v2, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    return-object v1
.end method

.method public getAt(I)Lcom/android/server/display/layout/Layout$Display;
    .registers 3
    .param p1, "index"    # I

    .line 188
    iget-object v0, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/layout/Layout$Display;

    return-object v0
.end method

.method public getByAddress(Landroid/view/DisplayAddress;)Lcom/android/server/display/layout/Layout$Display;
    .registers 5
    .param p1, "address"    # Landroid/view/DisplayAddress;

    .line 173
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 174
    iget-object v1, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/layout/Layout$Display;

    .line 175
    .local v1, "display":Lcom/android/server/display/layout/Layout$Display;
    invoke-virtual {v1}, Lcom/android/server/display/layout/Layout$Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 176
    return-object v1

    .line 173
    .end local v1    # "display":Lcom/android/server/display/layout/Layout$Display;
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 179
    .end local v0    # "i":I
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getById(I)Lcom/android/server/display/layout/Layout$Display;
    .registers 5
    .param p1, "id"    # I

    .line 157
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 158
    iget-object v1, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/layout/Layout$Display;

    .line 159
    .local v1, "display":Lcom/android/server/display/layout/Layout$Display;
    invoke-virtual {v1}, Lcom/android/server/display/layout/Layout$Display;->getLogicalDisplayId()I

    move-result v2

    if-ne p1, v2, :cond_18

    .line 160
    return-object v1

    .line 157
    .end local v1    # "display":Lcom/android/server/display/layout/Layout$Display;
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 163
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeDisplayLocked(I)V
    .registers 4
    .param p1, "id"    # I

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/server/display/layout/Layout;->getById(I)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v0

    .line 130
    .local v0, "display":Lcom/android/server/display/layout/Layout$Display;
    if-eqz v0, :cond_b

    .line 131
    iget-object v1, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 133
    :cond_b
    return-void
.end method

.method public size()I
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
