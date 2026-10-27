.class final Lmiui/util/SmartCoverManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SmartCoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/SmartCoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/util/SmartCoverManager;


# direct methods
.method public constructor blacklist <init>(Lmiui/util/SmartCoverManager;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 56
    iput-object p1, p0, Lmiui/util/SmartCoverManager$SettingsObserver;->this$0:Lmiui/util/SmartCoverManager;

    .line 57
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 58
    return-void
.end method


# virtual methods
.method public whitelist onChange(ZLandroid/net/Uri;)V
    .registers 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 62
    iget-object v0, p0, Lmiui/util/SmartCoverManager$SettingsObserver;->this$0:Lmiui/util/SmartCoverManager;

    invoke-static {v0}, Lmiui/util/SmartCoverManager;->-$$Nest$mupdateSmartCoverFromSettings(Lmiui/util/SmartCoverManager;)V

    .line 63
    return-void
.end method
