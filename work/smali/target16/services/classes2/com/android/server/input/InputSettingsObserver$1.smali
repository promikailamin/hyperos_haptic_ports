.class public Lcom/android/server/input/InputSettingsObserver$1;
.super Landroid/content/BroadcastReceiver;
.source "InputSettingsObserver.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/InputSettingsObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputSettingsObserver;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/android/server/input/InputSettingsObserver$1;->this$0:Lcom/android/server/input/InputSettingsObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 152
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver$1;->this$0:Lcom/android/server/input/InputSettingsObserver;

    invoke-static {p0}, Lcom/android/server/input/InputSettingsObserver;->-$$Nest$fgetmObservers(Lcom/android/server/input/InputSettingsObserver;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Consumer;

    .line 153
    const-string/jumbo p2, "user switched"

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_e

    :cond_21
    return-void
.end method
