.class Lcom/android/internal/os/RuntimeInit$Arguments;
.super Ljava/lang/Object;
.source "RuntimeInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RuntimeInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Arguments"
.end annotation


# instance fields
.field blacklist startArgs:[Ljava/lang/String;

.field blacklist startClass:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>([Ljava/lang/String;)V
    .registers 2
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    invoke-direct {p0, p1}, Lcom/android/internal/os/RuntimeInit$Arguments;->parseArgs([Ljava/lang/String;)V

    .line 514
    return-void
.end method

.method private blacklist parseArgs([Ljava/lang/String;)V
    .registers 6
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 521
    const/4 v0, 0x0

    .line 522
    .local v0, "curArg":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1b

    .line 523
    aget-object v1, p1, v0

    .line 525
    .local v1, "arg":Ljava/lang/String;
    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 526
    add-int/lit8 v0, v0, 0x1

    .line 527
    goto :goto_1b

    .line 528
    :cond_11
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 529
    goto :goto_1b

    .line 522
    .end local v1    # "arg":Ljava/lang/String;
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 533
    :cond_1b
    :goto_1b
    array-length v1, p1

    if-eq v0, v1, :cond_30

    .line 537
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "curArg":I
    .local v1, "curArg":I
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/android/internal/os/RuntimeInit$Arguments;->startClass:Ljava/lang/String;

    .line 538
    array-length v0, p1

    sub-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/RuntimeInit$Arguments;->startArgs:[Ljava/lang/String;

    .line 539
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 540
    return-void

    .line 534
    .end local v1    # "curArg":I
    .restart local v0    # "curArg":I
    :cond_30
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Missing classname argument to RuntimeInit!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
