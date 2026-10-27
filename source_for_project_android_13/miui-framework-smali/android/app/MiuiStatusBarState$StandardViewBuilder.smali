.class public Landroid/app/MiuiStatusBarState$StandardViewBuilder;
.super Ljava/lang/Object;
.source "MiuiStatusBarState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/MiuiStatusBarState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StandardViewBuilder"
.end annotation


# instance fields
.field private blacklist mViews:Landroid/widget/RemoteViews;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x110c002c

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    .line 104
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/widget/RemoteViews;
    .registers 2

    .line 169
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public whitelist setAppIcon(I)Landroid/app/MiuiStatusBarState$StandardViewBuilder;
    .registers 5
    .param p1, "appIcon"    # I

    .line 112
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v1, 0x1020006

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 113
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 114
    return-object p0
.end method

.method public whitelist setBackgroundColor(I)Landroid/app/MiuiStatusBarState$StandardViewBuilder;
    .registers 5
    .param p1, "bgColor"    # I

    .line 157
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v1, 0x110a0017

    const-string v2, "setBackgroundColor"

    invoke-virtual {v0, v1, v2, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 158
    return-object p0
.end method

.method public whitelist setPendingIntent(Landroid/app/PendingIntent;)Landroid/app/MiuiStatusBarState$StandardViewBuilder;
    .registers 4
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 107
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v1, 0x110a0017

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 108
    return-object p0
.end method

.method public whitelist setShowStatusInfo(Z)Landroid/app/MiuiStatusBarState$StandardViewBuilder;
    .registers 7
    .param p1, "show"    # Z

    .line 124
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_9

    move v3, v2

    goto :goto_a

    :cond_9
    move v3, v1

    :goto_a
    const v4, 0x1020004

    invoke-virtual {v0, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 125
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v3, 0x1020002

    if-eqz p1, :cond_18

    move v1, v2

    :cond_18
    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 126
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v1, 0x110a0017

    if-eqz p1, :cond_23

    goto :goto_25

    :cond_23
    const/16 v2, 0x11

    :goto_25
    const-string v3, "setGravity"

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 127
    return-object p0
.end method

.method public whitelist setStatusChronometer(JLjava/lang/String;Z)Landroid/app/MiuiStatusBarState$StandardViewBuilder;
    .registers 11
    .param p1, "base"    # J
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "started"    # Z

    .line 150
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v1, 0x110a0038

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 151
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v1, 0x1020014

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 152
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v1, 0x110a0038

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 153
    return-object p0
.end method

.method public whitelist setStatusDescripiton(Ljava/lang/String;)Landroid/app/MiuiStatusBarState$StandardViewBuilder;
    .registers 6
    .param p1, "statusDescripiton"    # Ljava/lang/String;

    .line 143
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v1, 0x1020014

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v2, 0x1020015

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 145
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 146
    return-object p0
.end method

.method public whitelist setStatusIcon1(I)Landroid/app/MiuiStatusBarState$StandardViewBuilder;
    .registers 5
    .param p1, "statusIcon1"    # I

    .line 131
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v1, 0x1020007

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 132
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 133
    return-object p0
.end method

.method public whitelist setStatusIcon2(I)Landroid/app/MiuiStatusBarState$StandardViewBuilder;
    .registers 5
    .param p1, "statusIcon2"    # I

    .line 137
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v1, 0x1020008

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 138
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 139
    return-object p0
.end method

.method public whitelist setTextColor(I)Landroid/app/MiuiStatusBarState$StandardViewBuilder;
    .registers 5
    .param p1, "textColor"    # I

    .line 162
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v1, 0x1020016

    const-string v2, "setTextColor"

    invoke-virtual {v0, v1, v2, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 163
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v1, 0x1020014

    invoke-virtual {v0, v1, v2, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 164
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v1, 0x110a0038

    invoke-virtual {v0, v1, v2, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 165
    return-object p0
.end method

.method public whitelist setTitle(Ljava/lang/String;)Landroid/app/MiuiStatusBarState$StandardViewBuilder;
    .registers 5
    .param p1, "title"    # Ljava/lang/String;

    .line 118
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v1, 0x1020016

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 120
    return-object p0
.end method
