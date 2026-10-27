.class public Lcom/android/server/wm/TaskSnapshotPersisterInjectorStub;
.super Ljava/lang/Object;
.source "TaskSnapshotPersisterInjectorStub.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/android/server/wm/TaskSnapshotPersisterInjectorStub;
    .registers 1

    .line 10
    const-class v0, Lcom/android/server/wm/TaskSnapshotPersisterInjectorStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskSnapshotPersisterInjectorStub;

    return-object v0
.end method


# virtual methods
.method public checkName(Landroid/window/TaskSnapshot;)Ljava/lang/String;
    .registers 3
    .param p1, "snapshot"    # Landroid/window/TaskSnapshot;

    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public closeQuitely(Ljava/io/Closeable;)V
    .registers 2
    .param p1, "stream"    # Ljava/io/Closeable;

    .line 62
    return-void
.end method

.method public couldPersist(Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p1, "resolver"    # Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public couldPersist(Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;Lcom/android/server/wm/ActivityRecord;Z)Z
    .registers 5
    .param p1, "resolver"    # Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "forceUpdate"    # Z

    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public createDirectory(Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;I)Z
    .registers 4
    .param p1, "resolver"    # Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;
    .param p2, "userId"    # I

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public getBitmapFileQS(Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;ILjava/lang/String;Z)Ljava/io/File;
    .registers 6
    .param p1, "resolver"    # Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;
    .param p2, "userId"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "lowRes"    # Z

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBitmapFileQS(Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;Landroid/window/TaskSnapshot;IZ)Ljava/io/File;
    .registers 6
    .param p1, "resolver"    # Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;
    .param p2, "snapshot"    # Landroid/window/TaskSnapshot;
    .param p3, "userId"    # I
    .param p4, "lowRes"    # Z

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDirectoryQS(Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;I)Ljava/io/File;
    .registers 4
    .param p1, "resolver"    # Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;
    .param p2, "userId"    # I

    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProtoFileQS(Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;ILjava/lang/String;)Ljava/io/File;
    .registers 5
    .param p1, "resolver"    # Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;
    .param p2, "userId"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeProto(Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;Landroid/window/TaskSnapshot;I)Z
    .registers 5
    .param p1, "resolver"    # Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;
    .param p2, "snapshot"    # Landroid/window/TaskSnapshot;
    .param p3, "userId"    # I

    .line 27
    const/4 v0, 0x0

    return v0
.end method
