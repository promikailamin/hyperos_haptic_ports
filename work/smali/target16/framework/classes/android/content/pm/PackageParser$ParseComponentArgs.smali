.class public Landroid/content/pm/PackageParser$ParseComponentArgs;
.super Landroid/content/pm/PackageParser$ParsePackageItemArgs;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParseComponentArgs"
.end annotation


# instance fields
.field final greylist-max-o descriptionRes:I

.field final greylist-max-o enabledRes:I

.field greylist-max-o flags:I

.field final greylist-max-o processRes:I

.field final greylist-max-o sepProcesses:[Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V
    .registers 13

    .line 365
    invoke-direct/range {p0 .. p8}, Landroid/content/pm/PackageParser$ParsePackageItemArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII)V

    .line 367
    move-object p1, p0

    iput-object p9, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sepProcesses:[Ljava/lang/String;

    .line 368
    iput p10, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->processRes:I

    .line 369
    iput p11, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->descriptionRes:I

    .line 370
    iput p12, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->enabledRes:I

    .line 371
    return-void
.end method
