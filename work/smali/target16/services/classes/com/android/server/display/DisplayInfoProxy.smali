.class public Lcom/android/server/display/DisplayInfoProxy;
.super Ljava/lang/Object;
.source "DisplayInfoProxy.java"


# instance fields
.field public mDisplayInfoChangeSource:Landroid/view/DisplayInfo$DisplayInfoChangeSource;

.field public mDisplayInfoGroupsChanged:I

.field public mInfo:Landroid/view/DisplayInfo;


# direct methods
.method public constructor <init>(Landroid/view/DisplayInfo;)V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/android/server/display/DisplayInfoProxy;->mDisplayInfoGroupsChanged:I

    .line 48
    iput-object p1, p0, Lcom/android/server/display/DisplayInfoProxy;->mInfo:Landroid/view/DisplayInfo;

    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 4

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayInfoGroupsChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayInfoProxy;->mDisplayInfoGroupsChanged:I

    .line 125
    invoke-static {v1}, Landroid/view/DisplayInfo$DisplayInfoGroup;->displayInfoGroupsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayInfoChangeSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/DisplayInfoProxy;->mDisplayInfoChangeSource:Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public get()Landroid/view/DisplayInfo;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/android/server/display/DisplayInfoProxy;->mInfo:Landroid/view/DisplayInfo;

    return-object p0
.end method

.method public getDisplayInfoChangeSource()Landroid/view/DisplayInfo$DisplayInfoChangeSource;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/android/server/display/DisplayInfoProxy;->mDisplayInfoChangeSource:Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    return-object p0
.end method

.method public getDisplayInfoGroupsChanged()I
    .registers 1

    .line 114
    iget p0, p0, Lcom/android/server/display/DisplayInfoProxy;->mDisplayInfoGroupsChanged:I

    return p0
.end method

.method public set(ILandroid/view/DisplayInfo$DisplayInfoChangeSource;)V
    .registers 3

    .line 93
    iput p1, p0, Lcom/android/server/display/DisplayInfoProxy;->mDisplayInfoGroupsChanged:I

    .line 94
    iput-object p2, p0, Lcom/android/server/display/DisplayInfoProxy;->mDisplayInfoChangeSource:Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Lcom/android/server/display/DisplayInfoProxy;->mInfo:Landroid/view/DisplayInfo;

    .line 96
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->invalidateLocalDisplayInfoCaches()V

    return-void
.end method

.method public set(Landroid/view/DisplayInfo;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/android/server/display/DisplayInfoProxy;->mInfo:Landroid/view/DisplayInfo;

    .line 62
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->invalidateLocalDisplayInfoCaches()V

    return-void
.end method

.method public set(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;Landroid/view/DisplayInfo$DisplayInfoChangeSource;)V
    .registers 4

    .line 76
    invoke-virtual {p1, p2}, Landroid/view/DisplayInfo;->getBasicChangedGroups(Landroid/view/DisplayInfo;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayInfoProxy;->mDisplayInfoGroupsChanged:I

    .line 77
    iput-object p3, p0, Lcom/android/server/display/DisplayInfoProxy;->mDisplayInfoChangeSource:Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    .line 78
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    return-void
.end method
