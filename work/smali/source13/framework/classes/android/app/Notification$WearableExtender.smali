.class public final Landroid/app/Notification$WearableExtender;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/app/Notification$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WearableExtender"
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_CONTENT_ICON_GRAVITY:I = 0x800005

.field private static final greylist-max-o DEFAULT_FLAGS:I = 0x1

.field private static final greylist-max-o DEFAULT_GRAVITY:I = 0x50

.field private static final greylist-max-o EXTRA_WEARABLE_EXTENSIONS:Ljava/lang/String; = "android.wearable.EXTENSIONS"

.field private static final greylist-max-o FLAG_BIG_PICTURE_AMBIENT:I = 0x20

.field private static final greylist-max-o FLAG_CONTENT_INTENT_AVAILABLE_OFFLINE:I = 0x1

.field private static final greylist-max-o FLAG_HINT_AVOID_BACKGROUND_CLIPPING:I = 0x10

.field private static final greylist-max-o FLAG_HINT_CONTENT_INTENT_LAUNCHES_ACTIVITY:I = 0x40

.field private static final greylist-max-o FLAG_HINT_HIDE_ICON:I = 0x2

.field private static final greylist-max-o FLAG_HINT_SHOW_BACKGROUND_ONLY:I = 0x4

.field private static final greylist-max-o FLAG_START_SCROLL_BOTTOM:I = 0x8

.field private static final greylist-max-o KEY_ACTIONS:Ljava/lang/String; = "actions"

.field static final greylist-max-o KEY_BACKGROUND:Ljava/lang/String; = "background"

.field private static final greylist-max-o KEY_BRIDGE_TAG:Ljava/lang/String; = "bridgeTag"

.field private static final greylist-max-o KEY_CONTENT_ACTION_INDEX:Ljava/lang/String; = "contentActionIndex"

.field private static final greylist-max-o KEY_CONTENT_ICON:Ljava/lang/String; = "contentIcon"

.field private static final greylist-max-o KEY_CONTENT_ICON_GRAVITY:Ljava/lang/String; = "contentIconGravity"

.field private static final greylist-max-o KEY_CUSTOM_CONTENT_HEIGHT:Ljava/lang/String; = "customContentHeight"

.field private static final greylist-max-o KEY_CUSTOM_SIZE_PRESET:Ljava/lang/String; = "customSizePreset"

.field private static final greylist-max-o KEY_DISMISSAL_ID:Ljava/lang/String; = "dismissalId"

.field static final greylist-max-o KEY_DISPLAY_INTENT:Ljava/lang/String; = "displayIntent"

.field private static final greylist-max-o KEY_FLAGS:Ljava/lang/String; = "flags"

.field private static final greylist-max-o KEY_GRAVITY:Ljava/lang/String; = "gravity"

.field private static final greylist-max-o KEY_HINT_SCREEN_TIMEOUT:Ljava/lang/String; = "hintScreenTimeout"

.field private static final greylist-max-o KEY_PAGES:Ljava/lang/String; = "pages"

.field public static final whitelist SCREEN_TIMEOUT_LONG:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SCREEN_TIMEOUT_SHORT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SIZE_DEFAULT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SIZE_FULL_SCREEN:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SIZE_LARGE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SIZE_MEDIUM:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SIZE_SMALL:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SIZE_XSMALL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist UNSET_ACTION_INDEX:I = -0x1


# instance fields
.field private greylist-max-o mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mBackground:Landroid/graphics/Bitmap;

.field private greylist-max-o mBridgeTag:Ljava/lang/String;

.field private greylist-max-o mContentActionIndex:I

.field private greylist-max-o mContentIcon:I

.field private greylist-max-o mContentIconGravity:I

.field private greylist-max-o mCustomContentHeight:I

.field private greylist-max-o mCustomSizePreset:I

.field private greylist-max-o mDismissalId:Ljava/lang/String;

.field private greylist-max-o mDisplayIntent:Landroid/app/PendingIntent;

.field private greylist-max-o mFlags:I

.field private greylist-max-o mGravity:I

.field private greylist-max-o mHintScreenTimeout:I

.field private greylist-max-o mPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mvisitUris(Landroid/app/Notification$WearableExtender;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/Notification$WearableExtender;->visitUris(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 10957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10938
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    .line 10939
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    .line 10941
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    .line 10944
    const v0, 0x800005

    iput v0, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    .line 10945
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    .line 10946
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    .line 10948
    const/16 v0, 0x50

    iput v0, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    .line 10958
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/Notification;)V
    .registers 11
    .param p1, "notif"    # Landroid/app/Notification;

    .line 10960
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10938
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    .line 10939
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    .line 10941
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    .line 10944
    const v1, 0x800005

    iput v1, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    .line 10945
    const/4 v2, -0x1

    iput v2, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    .line 10946
    const/4 v3, 0x0

    iput v3, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    .line 10948
    const/16 v4, 0x50

    iput v4, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    .line 10961
    iget-object v5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.wearable.EXTENSIONS"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 10962
    .local v5, "wearableBundle":Landroid/os/Bundle;
    if-eqz v5, :cond_b4

    .line 10963
    const-string v6, "actions"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 10964
    .local v6, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    if-eqz v6, :cond_3a

    .line 10965
    iget-object v7, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 10968
    :cond_3a
    const-string v7, "flags"

    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    .line 10969
    const-class v0, Landroid/app/PendingIntent;

    const-string v7, "displayIntent"

    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/Notification$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    .line 10972
    const-class v0, Landroid/app/Notification;

    const-string/jumbo v7, "pages"

    invoke-static {v5, v7, v0}, Landroid/app/Notification;->-$$Nest$smgetParcelableArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Landroid/app/Notification;

    .line 10974
    .local v0, "pages":[Landroid/app/Notification;
    if-eqz v0, :cond_60

    .line 10975
    iget-object v7, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-static {v7, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 10978
    :cond_60
    const-class v7, Landroid/graphics/Bitmap;

    const-string v8, "background"

    invoke-virtual {v5, v8, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    iput-object v7, p0, Landroid/app/Notification$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    .line 10979
    const-string v7, "contentIcon"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Landroid/app/Notification$WearableExtender;->mContentIcon:I

    .line 10980
    const-string v7, "contentIconGravity"

    invoke-virtual {v5, v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    .line 10982
    const-string v1, "contentActionIndex"

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    .line 10984
    const-string v1, "customSizePreset"

    invoke-virtual {v5, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    .line 10986
    const-string v1, "customContentHeight"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$WearableExtender;->mCustomContentHeight:I

    .line 10987
    const-string v1, "gravity"

    invoke-virtual {v5, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    .line 10988
    const-string v1, "hintScreenTimeout"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$WearableExtender;->mHintScreenTimeout:I

    .line 10989
    const-string v1, "dismissalId"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$WearableExtender;->mDismissalId:Ljava/lang/String;

    .line 10990
    const-string v1, "bridgeTag"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$WearableExtender;->mBridgeTag:Ljava/lang/String;

    .line 10992
    .end local v0    # "pages":[Landroid/app/Notification;
    .end local v6    # "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    :cond_b4
    return-void
.end method

.method private greylist-max-o setFlag(IZ)V
    .registers 5
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .line 11630
    if-eqz p2, :cond_8

    .line 11631
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    goto :goto_e

    .line 11633
    :cond_8
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    .line 11635
    :goto_e
    return-void
.end method

.method private blacklist visitUris(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 11638
    .local p1, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$Action;

    .line 11639
    .local v1, "action":Landroid/app/Notification$Action;
    invoke-static {v1, p1}, Landroid/app/Notification$Action;->-$$Nest$mvisitUris(Landroid/app/Notification$Action;Ljava/util/function/Consumer;)V

    .line 11640
    .end local v1    # "action":Landroid/app/Notification$Action;
    goto :goto_6

    .line 11641
    :cond_16
    return-void
.end method


# virtual methods
.method public whitelist addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$WearableExtender;
    .registers 3
    .param p1, "action"    # Landroid/app/Notification$Action;

    .line 11085
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11086
    return-object p0
.end method

.method public whitelist addActions(Ljava/util/List;)Landroid/app/Notification$WearableExtender;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;)",
            "Landroid/app/Notification$WearableExtender;"
        }
    .end annotation

    .line 11102
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 11103
    return-object p0
.end method

.method public whitelist addPage(Landroid/app/Notification;)Landroid/app/Notification$WearableExtender;
    .registers 3
    .param p1, "page"    # Landroid/app/Notification;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11184
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11185
    return-object p0
.end method

.method public whitelist addPages(Ljava/util/List;)Landroid/app/Notification$WearableExtender;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification;",
            ">;)",
            "Landroid/app/Notification$WearableExtender;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11201
    .local p1, "pages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification;>;"
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 11202
    return-object p0
.end method

.method public whitelist clearActions()Landroid/app/Notification$WearableExtender;
    .registers 2

    .line 11112
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11113
    return-object p0
.end method

.method public whitelist clearPages()Landroid/app/Notification$WearableExtender;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11213
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11214
    return-object p0
.end method

.method public whitelist clone()Landroid/app/Notification$WearableExtender;
    .registers 4

    .line 11054
    new-instance v0, Landroid/app/Notification$WearableExtender;

    invoke-direct {v0}, Landroid/app/Notification$WearableExtender;-><init>()V

    .line 11055
    .local v0, "that":Landroid/app/Notification$WearableExtender;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    .line 11056
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    iput v1, v0, Landroid/app/Notification$WearableExtender;->mFlags:I

    .line 11057
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    .line 11058
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    .line 11059
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/app/Notification$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    .line 11060
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mContentIcon:I

    iput v1, v0, Landroid/app/Notification$WearableExtender;->mContentIcon:I

    .line 11061
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    iput v1, v0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    .line 11062
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    iput v1, v0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    .line 11063
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    iput v1, v0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    .line 11064
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mCustomContentHeight:I

    iput v1, v0, Landroid/app/Notification$WearableExtender;->mCustomContentHeight:I

    .line 11065
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    iput v1, v0, Landroid/app/Notification$WearableExtender;->mGravity:I

    .line 11066
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mHintScreenTimeout:I

    iput v1, v0, Landroid/app/Notification$WearableExtender;->mHintScreenTimeout:I

    .line 11067
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mDismissalId:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/Notification$WearableExtender;->mDismissalId:Ljava/lang/String;

    .line 11068
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mBridgeTag:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/Notification$WearableExtender;->mBridgeTag:Ljava/lang/String;

    .line 11069
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 10812
    invoke-virtual {p0}, Landroid/app/Notification$WearableExtender;->clone()Landroid/app/Notification$WearableExtender;

    move-result-object v0

    return-object v0
.end method

.method public whitelist extend(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;
    .registers 5
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .line 11001
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11003
    .local v0, "wearableBundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 11004
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    const-string v2, "actions"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 11006
    :cond_14
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1e

    .line 11007
    const-string v2, "flags"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11009
    :cond_1e
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_27

    .line 11010
    const-string v2, "displayIntent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11012
    :cond_27
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_43

    .line 11013
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    .line 11014
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/app/Notification;

    .line 11013
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Parcelable;

    const-string/jumbo v2, "pages"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 11016
    :cond_43
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4c

    .line 11017
    const-string v2, "background"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11019
    :cond_4c
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mContentIcon:I

    if-eqz v1, :cond_55

    .line 11020
    const-string v2, "contentIcon"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11022
    :cond_55
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    const v2, 0x800005

    if-eq v1, v2, :cond_61

    .line 11023
    const-string v2, "contentIconGravity"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11025
    :cond_61
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6b

    .line 11026
    const-string v2, "contentActionIndex"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11029
    :cond_6b
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    if-eqz v1, :cond_74

    .line 11030
    const-string v2, "customSizePreset"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11032
    :cond_74
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mCustomContentHeight:I

    if-eqz v1, :cond_7d

    .line 11033
    const-string v2, "customContentHeight"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11035
    :cond_7d
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    const/16 v2, 0x50

    if-eq v1, v2, :cond_88

    .line 11036
    const-string v2, "gravity"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11038
    :cond_88
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mHintScreenTimeout:I

    if-eqz v1, :cond_91

    .line 11039
    const-string v2, "hintScreenTimeout"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11041
    :cond_91
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mDismissalId:Ljava/lang/String;

    if-eqz v1, :cond_9a

    .line 11042
    const-string v2, "dismissalId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11044
    :cond_9a
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mBridgeTag:Ljava/lang/String;

    if-eqz v1, :cond_a3

    .line 11045
    const-string v2, "bridgeTag"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11048
    :cond_a3
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.wearable.EXTENSIONS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 11049
    return-object p1
.end method

.method public whitelist getActions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    .line 11120
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getBackground()Landroid/graphics/Bitmap;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11257
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public whitelist getBridgeTag()Ljava/lang/String;
    .registers 2

    .line 11626
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mBridgeTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getContentAction()I
    .registers 2

    .line 11325
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    return v0
.end method

.method public whitelist getContentIcon()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11274
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mContentIcon:I

    return v0
.end method

.method public whitelist getContentIconGravity()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11297
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    return v0
.end method

.method public whitelist getContentIntentAvailableOffline()Z
    .registers 3

    .line 11441
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist getCustomContentHeight()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11400
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mCustomContentHeight:I

    return v0
.end method

.method public whitelist getCustomSizePreset()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11376
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    return v0
.end method

.method public whitelist getDismissalId()Ljava/lang/String;
    .registers 2

    .line 11605
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mDismissalId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDisplayIntent()Landroid/app/PendingIntent;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11168
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getGravity()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11348
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    return v0
.end method

.method public whitelist getHintAmbientBigPicture()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11560
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist getHintAvoidBackgroundClipping()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11509
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist getHintContentIntentLaunchesActivity()Z
    .registers 2

    .line 11583
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist getHintHideIcon()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11462
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist getHintScreenTimeout()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11533
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mHintScreenTimeout:I

    return v0
.end method

.method public whitelist getHintShowBackgroundOnly()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11483
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist getPages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11227
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getStartScrollBottom()Z
    .registers 2

    .line 11419
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist setBackground(Landroid/graphics/Bitmap;)Landroid/app/Notification$WearableExtender;
    .registers 2
    .param p1, "background"    # Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11242
    iput-object p1, p0, Landroid/app/Notification$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    .line 11243
    return-object p0
.end method

.method public whitelist setBridgeTag(Ljava/lang/String;)Landroid/app/Notification$WearableExtender;
    .registers 2
    .param p1, "bridgeTag"    # Ljava/lang/String;

    .line 11617
    iput-object p1, p0, Landroid/app/Notification$WearableExtender;->mBridgeTag:Ljava/lang/String;

    .line 11618
    return-object p0
.end method

.method public whitelist setContentAction(I)Landroid/app/Notification$WearableExtender;
    .registers 2
    .param p1, "actionIndex"    # I

    .line 11311
    iput p1, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    .line 11312
    return-object p0
.end method

.method public whitelist setContentIcon(I)Landroid/app/Notification$WearableExtender;
    .registers 2
    .param p1, "icon"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11265
    iput p1, p0, Landroid/app/Notification$WearableExtender;->mContentIcon:I

    .line 11266
    return-object p0
.end method

.method public whitelist setContentIconGravity(I)Landroid/app/Notification$WearableExtender;
    .registers 2
    .param p1, "contentIconGravity"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11285
    iput p1, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    .line 11286
    return-object p0
.end method

.method public whitelist setContentIntentAvailableOffline(Z)Landroid/app/Notification$WearableExtender;
    .registers 3
    .param p1, "contentIntentAvailableOffline"    # Z

    .line 11430
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$WearableExtender;->setFlag(IZ)V

    .line 11431
    return-object p0
.end method

.method public whitelist setCustomContentHeight(I)Landroid/app/Notification$WearableExtender;
    .registers 2
    .param p1, "height"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11388
    iput p1, p0, Landroid/app/Notification$WearableExtender;->mCustomContentHeight:I

    .line 11389
    return-object p0
.end method

.method public whitelist setCustomSizePreset(I)Landroid/app/Notification$WearableExtender;
    .registers 2
    .param p1, "sizePreset"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11362
    iput p1, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    .line 11363
    return-object p0
.end method

.method public whitelist setDismissalId(Ljava/lang/String;)Landroid/app/Notification$WearableExtender;
    .registers 2
    .param p1, "dismissalId"    # Ljava/lang/String;

    .line 11596
    iput-object p1, p0, Landroid/app/Notification$WearableExtender;->mDismissalId:Ljava/lang/String;

    .line 11597
    return-object p0
.end method

.method public whitelist setDisplayIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$WearableExtender;
    .registers 2
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11156
    iput-object p1, p0, Landroid/app/Notification$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    .line 11157
    return-object p0
.end method

.method public whitelist setGravity(I)Landroid/app/Notification$WearableExtender;
    .registers 2
    .param p1, "gravity"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11336
    iput p1, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    .line 11337
    return-object p0
.end method

.method public whitelist setHintAmbientBigPicture(Z)Landroid/app/Notification$WearableExtender;
    .registers 3
    .param p1, "hintAmbientBigPicture"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11546
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$WearableExtender;->setFlag(IZ)V

    .line 11547
    return-object p0
.end method

.method public whitelist setHintAvoidBackgroundClipping(Z)Landroid/app/Notification$WearableExtender;
    .registers 3
    .param p1, "hintAvoidBackgroundClipping"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11496
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$WearableExtender;->setFlag(IZ)V

    .line 11497
    return-object p0
.end method

.method public whitelist setHintContentIntentLaunchesActivity(Z)Landroid/app/Notification$WearableExtender;
    .registers 3
    .param p1, "hintContentIntentLaunchesActivity"    # Z

    .line 11572
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$WearableExtender;->setFlag(IZ)V

    .line 11573
    return-object p0
.end method

.method public whitelist setHintHideIcon(Z)Landroid/app/Notification$WearableExtender;
    .registers 3
    .param p1, "hintHideIcon"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11451
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$WearableExtender;->setFlag(IZ)V

    .line 11452
    return-object p0
.end method

.method public whitelist setHintScreenTimeout(I)Landroid/app/Notification$WearableExtender;
    .registers 2
    .param p1, "timeout"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11521
    iput p1, p0, Landroid/app/Notification$WearableExtender;->mHintScreenTimeout:I

    .line 11522
    return-object p0
.end method

.method public whitelist setHintShowBackgroundOnly(Z)Landroid/app/Notification$WearableExtender;
    .registers 3
    .param p1, "hintShowBackgroundOnly"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11472
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$WearableExtender;->setFlag(IZ)V

    .line 11473
    return-object p0
.end method

.method public whitelist setStartScrollBottom(Z)Landroid/app/Notification$WearableExtender;
    .registers 3
    .param p1, "startScrollBottom"    # Z

    .line 11409
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$WearableExtender;->setFlag(IZ)V

    .line 11410
    return-object p0
.end method
