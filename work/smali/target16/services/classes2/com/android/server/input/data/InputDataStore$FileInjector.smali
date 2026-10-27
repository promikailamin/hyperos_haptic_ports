.class Lcom/android/server/input/data/InputDataStore$FileInjector;
.super Ljava/lang/Object;
.source "InputDataStore.java"


# instance fields
.field public final mAtomicFileMap:Ljava/util/Map;


# direct methods
.method public static bridge synthetic -$$Nest$mfinishWrite(Lcom/android/server/input/data/InputDataStore$FileInjector;ILjava/lang/String;Ljava/io/FileOutputStream;Z)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/input/data/InputDataStore$FileInjector;->finishWrite(ILjava/lang/String;Ljava/io/FileOutputStream;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mopenRead(Lcom/android/server/input/data/InputDataStore$FileInjector;ILjava/lang/String;)Ljava/io/InputStream;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/data/InputDataStore$FileInjector;->openRead(ILjava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mstartWrite(Lcom/android/server/input/data/InputDataStore$FileInjector;ILjava/lang/String;)Ljava/io/FileOutputStream;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/data/InputDataStore$FileInjector;->startWrite(ILjava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/data/InputDataStore$FileInjector;->mAtomicFileMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final finishWrite(ILjava/lang/String;Ljava/io/FileOutputStream;Z)V
    .registers 5

    if-eqz p4, :cond_a

    .line 179
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/data/InputDataStore$FileInjector;->getAtomicFileForUserId(ILjava/lang/String;)Landroid/util/AtomicFile;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    return-void

    .line 181
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/data/InputDataStore$FileInjector;->getAtomicFileForUserId(ILjava/lang/String;)Landroid/util/AtomicFile;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void
.end method

.method public getAtomicFileForUserId(ILjava/lang/String;)Landroid/util/AtomicFile;
    .registers 8

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/android/server/input/data/InputDataStore$FileInjector;->mAtomicFileMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 188
    iget-object v1, p0, Lcom/android/server/input/data/InputDataStore$FileInjector;->mAtomicFileMap:Ljava/util/Map;

    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    .line 189
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object p1

    const-string v4, "input"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".xml"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 188
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_4a
    iget-object p0, p0, Lcom/android/server/input/data/InputDataStore$FileInjector;->mAtomicFileMap:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/AtomicFile;

    return-object p0
.end method

.method public final openRead(ILjava/lang/String;)Ljava/io/InputStream;
    .registers 3

    .line 169
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/data/InputDataStore$FileInjector;->getAtomicFileForUserId(ILjava/lang/String;)Landroid/util/AtomicFile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p0

    return-object p0
.end method

.method public final startWrite(ILjava/lang/String;)Ljava/io/FileOutputStream;
    .registers 3

    .line 173
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/data/InputDataStore$FileInjector;->getAtomicFileForUserId(ILjava/lang/String;)Landroid/util/AtomicFile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object p0

    return-object p0
.end method
