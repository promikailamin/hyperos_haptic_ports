.class public final Landroid/app/Notification$CarExtender;
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
    name = "CarExtender"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$CarExtender$UnreadConversation;,
        Landroid/app/Notification$CarExtender$Builder;
    }
.end annotation


# static fields
.field private static final greylist-max-o EXTRA_CAR_EXTENDER:Ljava/lang/String; = "android.car.EXTENSIONS"

.field private static final greylist-max-o EXTRA_COLOR:Ljava/lang/String; = "app_color"

.field private static final greylist-max-o EXTRA_CONVERSATION:Ljava/lang/String; = "car_conversation"

.field private static final greylist-max-o EXTRA_LARGE_ICON:Ljava/lang/String; = "large_icon"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "CarExtender"


# instance fields
.field private greylist-max-o mColor:I

.field private greylist-max-o mLargeIcon:Landroid/graphics/Bitmap;

.field private greylist-max-o mUnreadConversation:Landroid/app/Notification$CarExtender$UnreadConversation;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 15709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15704
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification$CarExtender;->mColor:I

    .line 15710
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/Notification;)V
    .registers 5

    .line 15717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15704
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification$CarExtender;->mColor:I

    .line 15718
    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_c

    .line 15719
    const/4 p1, 0x0

    goto :goto_14

    :cond_c
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.car.EXTENSIONS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 15720
    :goto_14
    if-eqz p1, :cond_37

    .line 15721
    const-string/jumbo v1, "large_icon"

    const-class v2, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Landroid/app/Notification$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 15722
    const-string v1, "app_color"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$CarExtender;->mColor:I

    .line 15724
    const-string v0, "car_conversation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 15725
    invoke-static {p1}, Landroid/app/Notification$CarExtender$UnreadConversation;->getUnreadConversationFromBundle(Landroid/os/Bundle;)Landroid/app/Notification$CarExtender$UnreadConversation;

    move-result-object p1

    iput-object p1, p0, Landroid/app/Notification$CarExtender;->mUnreadConversation:Landroid/app/Notification$CarExtender$UnreadConversation;

    .line 15727
    :cond_37
    return-void
.end method


# virtual methods
.method public whitelist extend(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;
    .registers 5

    .line 15736
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 15738
    iget-object v1, p0, Landroid/app/Notification$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_11

    .line 15739
    const-string/jumbo v1, "large_icon"

    iget-object v2, p0, Landroid/app/Notification$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 15741
    :cond_11
    iget v1, p0, Landroid/app/Notification$CarExtender;->mColor:I

    if-eqz v1, :cond_1c

    .line 15742
    const-string v1, "app_color"

    iget v2, p0, Landroid/app/Notification$CarExtender;->mColor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 15745
    :cond_1c
    iget-object v1, p0, Landroid/app/Notification$CarExtender;->mUnreadConversation:Landroid/app/Notification$CarExtender$UnreadConversation;

    if-eqz v1, :cond_2b

    .line 15746
    iget-object v1, p0, Landroid/app/Notification$CarExtender;->mUnreadConversation:Landroid/app/Notification$CarExtender$UnreadConversation;

    invoke-virtual {v1}, Landroid/app/Notification$CarExtender$UnreadConversation;->getBundleForUnreadConversation()Landroid/os/Bundle;

    move-result-object v1

    .line 15747
    const-string v2, "car_conversation"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 15750
    :cond_2b
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.car.EXTENSIONS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 15751
    return-object p1
.end method

.method public whitelist getColor()I
    .registers 2

    .line 15774
    iget v0, p0, Landroid/app/Notification$CarExtender;->mColor:I

    return v0
.end method

.method public whitelist getLargeIcon()Landroid/graphics/Bitmap;
    .registers 2

    .line 15799
    iget-object v0, p0, Landroid/app/Notification$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public whitelist getUnreadConversation()Landroid/app/Notification$CarExtender$UnreadConversation;
    .registers 2

    .line 15819
    iget-object v0, p0, Landroid/app/Notification$CarExtender;->mUnreadConversation:Landroid/app/Notification$CarExtender$UnreadConversation;

    return-object v0
.end method

.method public whitelist setColor(I)Landroid/app/Notification$CarExtender;
    .registers 2

    .line 15763
    iput p1, p0, Landroid/app/Notification$CarExtender;->mColor:I

    .line 15764
    return-object p0
.end method

.method public whitelist setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$CarExtender;
    .registers 2

    .line 15787
    iput-object p1, p0, Landroid/app/Notification$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 15788
    return-object p0
.end method

.method public whitelist setUnreadConversation(Landroid/app/Notification$CarExtender$UnreadConversation;)Landroid/app/Notification$CarExtender;
    .registers 2

    .line 15809
    iput-object p1, p0, Landroid/app/Notification$CarExtender;->mUnreadConversation:Landroid/app/Notification$CarExtender$UnreadConversation;

    .line 15810
    return-object p0
.end method
