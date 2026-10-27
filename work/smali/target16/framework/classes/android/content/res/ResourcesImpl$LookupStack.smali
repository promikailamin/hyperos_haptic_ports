.class Landroid/content/res/ResourcesImpl$LookupStack;
.super Ljava/lang/Object;
.source "ResourcesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ResourcesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LookupStack"
.end annotation


# instance fields
.field private greylist-max-o mIds:[I

.field private greylist-max-o mSize:I


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 1689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1692
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/content/res/ResourcesImpl$LookupStack;->mIds:[I

    .line 1693
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/ResourcesImpl$LookupStack;->mSize:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/res/ResourcesImpl-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/res/ResourcesImpl$LookupStack;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o contains(I)Z
    .registers 5

    .line 1701
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget v2, p0, Landroid/content/res/ResourcesImpl$LookupStack;->mSize:I

    if-ge v1, v2, :cond_11

    .line 1702
    iget-object v2, p0, Landroid/content/res/ResourcesImpl$LookupStack;->mIds:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_e

    .line 1703
    const/4 p1, 0x1

    return p1

    .line 1701
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1706
    :cond_11
    return v0
.end method

.method public greylist-max-o pop()V
    .registers 2

    .line 1710
    iget v0, p0, Landroid/content/res/ResourcesImpl$LookupStack;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/content/res/ResourcesImpl$LookupStack;->mSize:I

    .line 1711
    return-void
.end method

.method public greylist-max-o push(I)V
    .registers 4

    .line 1696
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$LookupStack;->mIds:[I

    iget v1, p0, Landroid/content/res/ResourcesImpl$LookupStack;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object p1

    iput-object p1, p0, Landroid/content/res/ResourcesImpl$LookupStack;->mIds:[I

    .line 1697
    iget p1, p0, Landroid/content/res/ResourcesImpl$LookupStack;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/content/res/ResourcesImpl$LookupStack;->mSize:I

    .line 1698
    return-void
.end method
