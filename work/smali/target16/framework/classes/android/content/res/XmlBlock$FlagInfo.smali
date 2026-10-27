.class Landroid/content/res/XmlBlock$FlagInfo;
.super Ljava/lang/Object;
.source "XmlBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/XmlBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlagInfo"
.end annotation


# instance fields
.field private blacklist mNameIndex:I

.field private blacklist mNegated:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmNameIndex(Landroid/content/res/XmlBlock$FlagInfo;)I
    .registers 1

    iget p0, p0, Landroid/content/res/XmlBlock$FlagInfo;->mNameIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNegated(Landroid/content/res/XmlBlock$FlagInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/content/res/XmlBlock$FlagInfo;->mNegated:Z

    return p0
.end method

.method private constructor blacklist <init>(IZ)V
    .registers 3

    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    iput p1, p0, Landroid/content/res/XmlBlock$FlagInfo;->mNameIndex:I

    .line 697
    iput-boolean p2, p0, Landroid/content/res/XmlBlock$FlagInfo;->mNegated:Z

    .line 698
    return-void
.end method
