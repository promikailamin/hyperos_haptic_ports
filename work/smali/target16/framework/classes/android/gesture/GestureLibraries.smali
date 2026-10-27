.class public final Landroid/gesture/GestureLibraries;
.super Ljava/lang/Object;
.source "GestureLibraries.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gesture/GestureLibraries$FileGestureLibrary;,
        Landroid/gesture/GestureLibraries$ResourceGestureLibrary;
    }
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static whitelist fromFile(Ljava/io/File;)Landroid/gesture/GestureLibrary;
    .registers 2

    .line 43
    new-instance v0, Landroid/gesture/GestureLibraries$FileGestureLibrary;

    invoke-direct {v0, p0}, Landroid/gesture/GestureLibraries$FileGestureLibrary;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static whitelist fromFile(Ljava/lang/String;)Landroid/gesture/GestureLibrary;
    .registers 2

    .line 39
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/gesture/GestureLibraries;->fromFile(Ljava/io/File;)Landroid/gesture/GestureLibrary;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist fromFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/gesture/GestureLibrary;
    .registers 2

    .line 48
    new-instance v0, Landroid/gesture/GestureLibraries$FileGestureLibrary;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/gesture/GestureLibraries$FileGestureLibrary;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method public static whitelist fromPrivateFile(Landroid/content/Context;Ljava/lang/String;)Landroid/gesture/GestureLibrary;
    .registers 2

    .line 52
    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Landroid/gesture/GestureLibraries;->fromFile(Ljava/io/File;)Landroid/gesture/GestureLibrary;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist fromRawResource(Landroid/content/Context;I)Landroid/gesture/GestureLibrary;
    .registers 3

    .line 56
    new-instance v0, Landroid/gesture/GestureLibraries$ResourceGestureLibrary;

    invoke-direct {v0, p0, p1}, Landroid/gesture/GestureLibraries$ResourceGestureLibrary;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method
