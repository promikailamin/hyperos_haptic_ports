.class public interface abstract Lcom/android/server/display/DisplayModeDirectorStub;
.super Ljava/lang/Object;
.source "DisplayModeDirectorStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/display/DisplayModeDirectorStub;
    .registers 1

    .line 14
    const-class v0, Lcom/android/server/display/DisplayModeDirectorStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayModeDirectorStub;

    return-object v0
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 28
    return-void
.end method

.method public init(Lcom/android/server/display/DisplayModeDirector;Ljava/lang/Object;)V
    .registers 3
    .param p1, "modeDirector"    # Lcom/android/server/display/DisplayModeDirector;
    .param p2, "lock"    # Ljava/lang/Object;

    .line 18
    return-void
.end method

.method public onDesiredDisplayModeSpecsChanged(ILcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;Landroid/util/SparseArray;)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "specs"    # Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;)V"
        }
    .end annotation

    .line 24
    .local p3, "votesByDisplay":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    return-void
.end method
