.class Lcom/android/server/pm/Settings$1;
.super Lcom/android/server/utils/Watcher;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/Settings;


# direct methods
.method constructor <init>(Lcom/android/server/pm/Settings;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/Settings;

    .line 541
    iput-object p1, p0, Lcom/android/server/pm/Settings$1;->this$0:Lcom/android/server/pm/Settings;

    invoke-direct {p0}, Lcom/android/server/utils/Watcher;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/android/server/utils/Watchable;)V
    .registers 3
    .param p1, "what"    # Lcom/android/server/utils/Watchable;

    .line 544
    iget-object v0, p0, Lcom/android/server/pm/Settings$1;->this$0:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 545
    return-void
.end method
