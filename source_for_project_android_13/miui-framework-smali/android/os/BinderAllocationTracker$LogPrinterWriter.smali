.class Landroid/os/BinderAllocationTracker$LogPrinterWriter;
.super Ljava/lang/Object;
.source "BinderAllocationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BinderAllocationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogPrinterWriter"
.end annotation


# instance fields
.field final blacklist mPrinterWriter:Ljava/io/PrintWriter;


# direct methods
.method constructor blacklist <init>(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p1, p0, Landroid/os/BinderAllocationTracker$LogPrinterWriter;->mPrinterWriter:Ljava/io/PrintWriter;

    .line 295
    return-void
.end method


# virtual methods
.method blacklist flush()V
    .registers 2

    .line 310
    iget-object v0, p0, Landroid/os/BinderAllocationTracker$LogPrinterWriter;->mPrinterWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_7

    .line 311
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 313
    :cond_7
    return-void
.end method

.method blacklist println(Ljava/lang/String;)V
    .registers 3
    .param p1, "line"    # Ljava/lang/String;

    .line 298
    if-nez p1, :cond_3

    .line 299
    return-void

    .line 301
    :cond_3
    iget-object v0, p0, Landroid/os/BinderAllocationTracker$LogPrinterWriter;->mPrinterWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_b

    .line 302
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    return-void

    .line 305
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 306
    const-string v0, "Binder"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_16
    return-void
.end method
