.class public Lcom/android/server/pm/ParallelPackageParser$OrderedResult;
.super Ljava/lang/Object;
.source "ParallelPackageParser.java"


# instance fields
.field public final future:Ljava/util/concurrent/Future;

.field public final scanFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/util/concurrent/Future;)V
    .registers 3

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/android/server/pm/ParallelPackageParser$OrderedResult;->scanFile:Ljava/io/File;

    .line 137
    iput-object p2, p0, Lcom/android/server/pm/ParallelPackageParser$OrderedResult;->future:Ljava/util/concurrent/Future;

    return-void
.end method
