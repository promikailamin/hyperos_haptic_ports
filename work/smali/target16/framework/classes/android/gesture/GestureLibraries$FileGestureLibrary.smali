.class Landroid/gesture/GestureLibraries$FileGestureLibrary;
.super Landroid/gesture/GestureLibrary;
.source "GestureLibraries.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gesture/GestureLibraries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileGestureLibrary"
.end annotation


# instance fields
.field private final blacklist mFd:Ljava/io/FileDescriptor;

.field private final greylist-max-o mPath:Ljava/io/File;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/io/File;)V
    .registers 2

    .line 64
    invoke-direct {p0}, Landroid/gesture/GestureLibrary;-><init>()V

    .line 65
    iput-object p1, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    .line 66
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mFd:Ljava/io/FileDescriptor;

    .line 67
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/FileDescriptor;)V
    .registers 3

    .line 69
    invoke-direct {p0}, Landroid/gesture/GestureLibrary;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    .line 71
    iput-object p1, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mFd:Ljava/io/FileDescriptor;

    .line 72
    return-void
.end method


# virtual methods
.method public whitelist isReadOnly()Z
    .registers 2

    .line 80
    iget-object v0, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    if-eqz v0, :cond_d

    .line 81
    iget-object v0, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 83
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist load()Z
    .registers 7

    .line 120
    nop

    .line 121
    iget-object v0, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    const-string v1, "Gestures"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3e

    .line 122
    iget-object v0, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    .line 123
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 125
    :try_start_17
    iget-object v4, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mStore:Landroid/gesture/GestureStore;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v5, v2}, Landroid/gesture/GestureStore;->load(Ljava/io/InputStream;Z)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_21} :catch_23

    .line 126
    nop

    .line 129
    goto :goto_3d

    .line 127
    :catch_23
    move-exception v0

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not load the gesture library from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    :cond_3c
    move v2, v3

    :goto_3d
    goto :goto_53

    .line 133
    :cond_3e
    :try_start_3e
    iget-object v0, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mStore:Landroid/gesture/GestureStore;

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0, v4, v2}, Landroid/gesture/GestureStore;->load(Ljava/io/InputStream;Z)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_4a} :catch_4c

    .line 134
    nop

    .line 137
    goto :goto_53

    .line 135
    :catch_4c
    move-exception v0

    .line 136
    const-string v2, "Could not load the gesture library"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    .line 140
    :goto_53
    return v2
.end method

.method public whitelist save()Z
    .registers 7

    .line 87
    iget-object v0, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mStore:Landroid/gesture/GestureStore;

    invoke-virtual {v0}, Landroid/gesture/GestureStore;->hasChanged()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    .line 88
    :cond_a
    nop

    .line 90
    iget-object v0, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    const-string v2, "Gestures"

    const/4 v3, 0x0

    if-eqz v0, :cond_4f

    .line 91
    iget-object v0, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 94
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_25

    .line 95
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_25

    .line 96
    return v3

    .line 102
    :cond_25
    :try_start_25
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 103
    iget-object v4, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mStore:Landroid/gesture/GestureStore;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v5, v1}, Landroid/gesture/GestureStore;->save(Ljava/io/OutputStream;Z)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_32} :catch_34

    .line 104
    nop

    .line 107
    goto :goto_4e

    .line 105
    :catch_34
    move-exception v0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not save the gesture library in "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 108
    :goto_4e
    goto :goto_64

    .line 110
    :cond_4f
    :try_start_4f
    iget-object v0, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mStore:Landroid/gesture/GestureStore;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0, v4, v1}, Landroid/gesture/GestureStore;->save(Ljava/io/OutputStream;Z)V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_5b} :catch_5d

    .line 111
    nop

    .line 114
    goto :goto_64

    .line 112
    :catch_5d
    move-exception v0

    .line 113
    const-string v1, "Could not save the gesture library"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 116
    :goto_64
    return v1
.end method
