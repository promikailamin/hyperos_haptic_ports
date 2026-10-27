.class Lmiui/security/StorageRestrictedPathManager$1;
.super Landroid/database/ContentObserver;
.source "StorageRestrictedPathManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/security/StorageRestrictedPathManager;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/security/StorageRestrictedPathManager;

.field final synthetic blacklist val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor blacklist <init>(Lmiui/security/StorageRestrictedPathManager;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .registers 4
    .param p1, "this$0"    # Lmiui/security/StorageRestrictedPathManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 49
    iput-object p1, p0, Lmiui/security/StorageRestrictedPathManager$1;->this$0:Lmiui/security/StorageRestrictedPathManager;

    iput-object p3, p0, Lmiui/security/StorageRestrictedPathManager$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(ZLandroid/net/Uri;)V
    .registers 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 52
    invoke-static {}, Lmiui/security/StorageRestrictedPathManager;->-$$Nest$sfgetURI_ISOLATED_GALLERY_PATH()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 53
    iget-object v0, p0, Lmiui/security/StorageRestrictedPathManager$1;->this$0:Lmiui/security/StorageRestrictedPathManager;

    iget-object v1, p0, Lmiui/security/StorageRestrictedPathManager$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lmiui/security/StorageRestrictedPathManager;->-$$Nest$fgetmGalleryPathSet(Lmiui/security/StorageRestrictedPathManager;)Ljava/util/Set;

    move-result-object v2

    const-string v3, "key_isolated_gallery_path"

    invoke-static {v0, v1, v3, v2}, Lmiui/security/StorageRestrictedPathManager;->-$$Nest$mupdatePolicy(Lmiui/security/StorageRestrictedPathManager;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_2f

    .line 54
    :cond_18
    invoke-static {}, Lmiui/security/StorageRestrictedPathManager;->-$$Nest$sfgetURI_ISOLATED_SOCIALITY_PATH()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 55
    iget-object v0, p0, Lmiui/security/StorageRestrictedPathManager$1;->this$0:Lmiui/security/StorageRestrictedPathManager;

    iget-object v1, p0, Lmiui/security/StorageRestrictedPathManager$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lmiui/security/StorageRestrictedPathManager;->-$$Nest$fgetmSocialityPathSet(Lmiui/security/StorageRestrictedPathManager;)Ljava/util/Set;

    move-result-object v2

    const-string v3, "key_isolated_sociality_path"

    invoke-static {v0, v1, v3, v2}, Lmiui/security/StorageRestrictedPathManager;->-$$Nest$mupdatePolicy(Lmiui/security/StorageRestrictedPathManager;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/Set;)V

    .line 57
    :cond_2f
    :goto_2f
    return-void
.end method
