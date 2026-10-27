.class Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread$1;
.super Ljava/lang/Object;
.source "ShutdownCheckPoints.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->listCheckPointsFiles()[Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;

.field final synthetic val$filePrefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;

    .line 386
    iput-object p1, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread$1;->this$0:Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;

    iput-object p2, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread$1;->val$filePrefix:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 5
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 389
    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread$1;->val$filePrefix:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 390
    return v1

    .line 393
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread$1;->val$filePrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_17} :catch_1a

    .line 396
    nop

    .line 397
    const/4 v0, 0x1

    return v0

    .line 394
    :catch_1a
    move-exception v0

    .line 395
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v1
.end method
