.class public Lcom/android/server/pm/WatchedIntentResolver$2;
.super Ljava/lang/Object;
.source "WatchedIntentResolver.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/pm/WatchedIntentFilter;Lcom/android/server/pm/WatchedIntentFilter;)I
    .registers 3

    .line 129
    invoke-virtual {p1}, Lcom/android/server/pm/WatchedIntentFilter;->getPriority()I

    move-result p0

    .line 130
    invoke-virtual {p2}, Lcom/android/server/pm/WatchedIntentFilter;->getPriority()I

    move-result p1

    if-le p0, p1, :cond_c

    const/4 p0, -0x1

    return p0

    :cond_c
    if-ge p0, p1, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 127
    check-cast p1, Lcom/android/server/pm/WatchedIntentFilter;

    check-cast p2, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/WatchedIntentResolver$2;->compare(Lcom/android/server/pm/WatchedIntentFilter;Lcom/android/server/pm/WatchedIntentFilter;)I

    move-result p0

    return p0
.end method
