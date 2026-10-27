.class Lcom/android/server/utils/WatchedArraySet$1;
.super Lcom/android/server/utils/Watcher;
.source "WatchedArraySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/WatchedArraySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/utils/WatchedArraySet;


# direct methods
.method constructor <init>(Lcom/android/server/utils/WatchedArraySet;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/utils/WatchedArraySet;

    .line 41
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet$1;, "Lcom/android/server/utils/WatchedArraySet$1;"
    iput-object p1, p0, Lcom/android/server/utils/WatchedArraySet$1;->this$0:Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {p0}, Lcom/android/server/utils/Watcher;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/android/server/utils/Watchable;)V
    .registers 3
    .param p1, "what"    # Lcom/android/server/utils/Watchable;

    .line 44
    .local p0, "this":Lcom/android/server/utils/WatchedArraySet$1;, "Lcom/android/server/utils/WatchedArraySet$1;"
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet$1;->this$0:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 45
    return-void
.end method
