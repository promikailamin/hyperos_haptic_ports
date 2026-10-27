.class public Lmiui/content/res/ThemeResources$FilterInfo;
.super Ljava/lang/Object;
.source "ThemeResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/content/res/ThemeResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FilterInfo"
.end annotation


# instance fields
.field public blacklist mFallback:Lcom/miui/internal/content/res/ThemeFallback;

.field public blacklist mNightMode:Z

.field public whitelist mPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public whitelist mPath:Ljava/lang/String;

.field public blacklist mValues:Lmiui/content/res/ThemeValues;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Ljava/util/HashSet;)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 219
    .local p2, "packages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/content/res/ThemeResources$FilterInfo;-><init>(Ljava/lang/String;Ljava/util/HashSet;Z)V

    .line 220
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/HashSet;Z)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .param p3, "nightMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 225
    .local p2, "packages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    new-instance v0, Lmiui/content/res/ThemeValues;

    invoke-direct {v0}, Lmiui/content/res/ThemeValues;-><init>()V

    iput-object v0, p0, Lmiui/content/res/ThemeResources$FilterInfo;->mValues:Lmiui/content/res/ThemeValues;

    .line 215
    new-instance v0, Lcom/miui/internal/content/res/ThemeFallback;

    invoke-direct {v0}, Lcom/miui/internal/content/res/ThemeFallback;-><init>()V

    iput-object v0, p0, Lmiui/content/res/ThemeResources$FilterInfo;->mFallback:Lcom/miui/internal/content/res/ThemeFallback;

    .line 226
    iput-object p1, p0, Lmiui/content/res/ThemeResources$FilterInfo;->mPath:Ljava/lang/String;

    .line 227
    iput-object p2, p0, Lmiui/content/res/ThemeResources$FilterInfo;->mPackages:Ljava/util/HashSet;

    .line 228
    iput-boolean p3, p0, Lmiui/content/res/ThemeResources$FilterInfo;->mNightMode:Z

    .line 229
    return-void
.end method


# virtual methods
.method public whitelist match(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "nightMode"    # Z

    .line 232
    iget-object v0, p0, Lmiui/content/res/ThemeResources$FilterInfo;->mPackages:Ljava/util/HashSet;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_a
    iget-boolean v0, p0, Lmiui/content/res/ThemeResources$FilterInfo;->mNightMode:Z

    if-ne v0, p2, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method
