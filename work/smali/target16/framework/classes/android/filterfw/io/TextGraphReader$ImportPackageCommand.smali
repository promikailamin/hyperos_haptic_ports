.class Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;
.super Ljava/lang/Object;
.source "TextGraphReader.java"

# interfaces
.implements Landroid/filterfw/io/TextGraphReader$Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterfw/io/TextGraphReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportPackageCommand"
.end annotation


# instance fields
.field private blacklist mPackageName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;->mPackageName:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public blacklist execute(Landroid/filterfw/io/TextGraphReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 62
    :try_start_0
    invoke-static {p1}, Landroid/filterfw/io/TextGraphReader;->-$$Nest$fgetmFactory(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterFactory;

    move-result-object p1

    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/filterfw/core/FilterFactory;->addPackage(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_b

    .line 65
    nop

    .line 66
    return-void

    .line 63
    :catch_b
    move-exception p1

    .line 64
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
