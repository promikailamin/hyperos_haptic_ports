.class public Lcom/android/server/pm/HsumBootUserInitializer$2;
.super Ljava/lang/Object;
.source "HsumBootUserInitializer.java"

# interfaces
.implements Landroid/util/Dumpable;


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$name:Ljava/lang/String;

.field public final synthetic val$ref:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .registers 4

    .line 369
    iput-object p1, p0, Lcom/android/server/pm/HsumBootUserInitializer$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/HsumBootUserInitializer$2;->val$ref:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/android/server/pm/HsumBootUserInitializer$2;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 3

    .line 378
    iget-object p2, p0, Lcom/android/server/pm/HsumBootUserInitializer$2;->val$context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/android/server/pm/HsumBootUserInitializer;->-$$Nest$smdump(Ljava/io/PrintWriter;Landroid/content/Context;)V

    .line 379
    iget-object p2, p0, Lcom/android/server/pm/HsumBootUserInitializer$2;->val$ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/HsumBootUserInitializer;

    if-nez p2, :cond_1b

    .line 381
    iget-object p0, p0, Lcom/android/server/pm/HsumBootUserInitializer$2;->val$name:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "Effective state not available (%s has been GC\'ed already)\n"

    invoke-virtual {p1, p2, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void

    .line 384
    :cond_1b
    invoke-static {p2, p1}, Lcom/android/server/pm/HsumBootUserInitializer;->-$$Nest$mdump(Lcom/android/server/pm/HsumBootUserInitializer;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getDumpableName()Ljava/lang/String;
    .registers 1

    .line 373
    const-class p0, Lcom/android/server/pm/HsumBootUserInitializer;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
