.class Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;
.super Ljava/lang/Object;
.source "WebViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/contentcatcher/sdk/utils/WebViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebViewClassMatcher"
.end annotation


# instance fields
.field public blacklist mMatchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$maddToMatchList(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->addToMatchList(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveFromMatchList(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->removeFromMatchList(Ljava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher-IA;)V
    .registers 2

    invoke-direct {p0}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;-><init>()V

    return-void
.end method

.method private declared-synchronized blacklist addToMatchList(Ljava/lang/String;)V
    .registers 3
    .param p1, "className"    # Ljava/lang/String;

    monitor-enter p0

    .line 53
    :try_start_1
    iget-object v0, p0, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 54
    iget-object v0, p0, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 56
    .end local p0    # "this":Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;
    :cond_e
    monitor-exit p0

    return-void

    .line 52
    .end local p1    # "className":Ljava/lang/String;
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized blacklist removeFromMatchList(Ljava/lang/String;)V
    .registers 3
    .param p1, "className"    # Ljava/lang/String;

    monitor-enter p0

    .line 58
    :try_start_1
    iget-object v0, p0, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 59
    monitor-exit p0

    return-void

    .line 57
    .end local p0    # "this":Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;
    .end local p1    # "className":Ljava/lang/String;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method
