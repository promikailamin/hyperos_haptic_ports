.class Lmiui/drm/ThemeReceiver$ValidateThemeTask;
.super Landroid/os/AsyncTask;
.source "ThemeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/drm/ThemeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValidateThemeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field final synthetic blacklist this$0:Lmiui/drm/ThemeReceiver;


# direct methods
.method public constructor blacklist <init>(Lmiui/drm/ThemeReceiver;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .line 60
    iput-object p1, p0, Lmiui/drm/ThemeReceiver$ValidateThemeTask;->this$0:Lmiui/drm/ThemeReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 61
    iput-object p2, p0, Lmiui/drm/ThemeReceiver$ValidateThemeTask;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method


# virtual methods
.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 57
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmiui/drm/ThemeReceiver$ValidateThemeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 9
    .param p1, "voids"    # [Ljava/lang/Void;

    .line 66
    const-string v0, "ThemeReceiver-drm"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v1, "invalidPath":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/drm/DrmManager$DrmResult;>;"
    :try_start_7
    invoke-static {}, Lmiui/drm/ThemeReceiver;->-$$Nest$sfgetsLocations()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 69
    .local v3, "entry":Ljava/lang/String;
    iget-object v4, p0, Lmiui/drm/ThemeReceiver$ValidateThemeTask;->this$0:Lmiui/drm/ThemeReceiver;

    iget-object v5, p0, Lmiui/drm/ThemeReceiver$ValidateThemeTask;->mContext:Landroid/content/Context;

    const-string v6, "/data/system/theme/rights/"

    invoke-static {v4, v5, v3, v6, v1}, Lmiui/drm/ThemeReceiver;->-$$Nest$mvalidateTheme(Lmiui/drm/ThemeReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 70
    .end local v3    # "entry":Ljava/lang/String;
    goto :goto_f

    .line 71
    :cond_25
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5d

    .line 72
    iget-object v2, p0, Lmiui/drm/ThemeReceiver$ValidateThemeTask;->this$0:Lmiui/drm/ThemeReceiver;

    invoke-static {v2, v1}, Lmiui/drm/ThemeReceiver;->-$$Nest$mmap2String(Lmiui/drm/ThemeReceiver;Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v2

    .line 73
    .local v2, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restore.default.theme for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lmiui/drm/DrmManager;->exportFatalLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v3, Lmiui/content/res/ThemeRuntimeManager;

    iget-object v4, p0, Lmiui/drm/ThemeReceiver$ValidateThemeTask;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lmiui/content/res/ThemeRuntimeManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lmiui/content/res/ThemeRuntimeManager;->resetDefault(Ljava/util/Set;Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_5d} :catch_5e

    .line 78
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5d
    goto :goto_64

    .line 76
    :catch_5e
    move-exception v2

    .line 77
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "check theme drm occur exception: "

    invoke-static {v0, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_64
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 57
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmiui/drm/ThemeReceiver$ValidateThemeTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected blacklist onPostExecute(Ljava/lang/Void;)V
    .registers 4
    .param p1, "aVoid"    # Ljava/lang/Void;

    .line 84
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lmiui/drm/ThemeReceiver$ValidateThemeTask;->this$0:Lmiui/drm/ThemeReceiver;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/drm/ThemeReceiver;->-$$Nest$fputmIsValidating(Lmiui/drm/ThemeReceiver;Z)V

    .line 86
    return-void
.end method
