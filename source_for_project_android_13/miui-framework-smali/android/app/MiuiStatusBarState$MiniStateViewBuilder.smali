.class public Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;
.super Ljava/lang/Object;
.source "MiuiStatusBarState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/MiuiStatusBarState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiniStateViewBuilder"
.end annotation


# instance fields
.field private blacklist mChronometerShow:Z

.field private blacklist mIconShow:Z

.field private blacklist mTitleShow:Z

.field private blacklist mViews:Landroid/widget/RemoteViews;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x110c002b

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mViews:Landroid/widget/RemoteViews;

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mIconShow:Z

    .line 182
    iput-boolean v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mTitleShow:Z

    .line 183
    iput-boolean v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mChronometerShow:Z

    .line 184
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/widget/RemoteViews;
    .registers 4

    .line 228
    iget-boolean v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mIconShow:Z

    const v1, 0x110a0053

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mChronometerShow:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mTitleShow:Z

    if-eqz v0, :cond_16

    .line 229
    :cond_f
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1d

    .line 231
    :cond_16
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 233
    :goto_1d
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mViews:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public whitelist setAppIcon(I)Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;
    .registers 5
    .param p1, "appIcon"    # I

    .line 192
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v1, 0x1020006

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 193
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mIconShow:Z

    .line 195
    return-object p0
.end method

.method public whitelist setBackgroundColor(I)Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;
    .registers 6
    .param p1, "bgColor"    # I

    .line 217
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mViews:Landroid/widget/RemoteViews;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const v2, 0x110a0017

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, p1, v1}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    .line 218
    return-object p0
.end method

.method public whitelist setChronometer(JLjava/lang/String;Z)Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;
    .registers 11
    .param p1, "base"    # J
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "started"    # Z

    .line 208
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v1, 0x110a0038

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 209
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v1, 0x1020016

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 210
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v1, 0x110a0038

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 211
    iput-boolean v2, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mTitleShow:Z

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mChronometerShow:Z

    .line 213
    return-object p0
.end method

.method public whitelist setPendingIntent(Landroid/app/PendingIntent;)Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;
    .registers 4
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 187
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v1, 0x110a0017

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 188
    return-object p0
.end method

.method public whitelist setTextColor(I)Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;
    .registers 5
    .param p1, "textColor"    # I

    .line 222
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v1, 0x1020016

    const-string v2, "setTextColor"

    invoke-virtual {v0, v1, v2, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 223
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v1, 0x110a0038

    invoke-virtual {v0, v1, v2, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 224
    return-object p0
.end method

.method public whitelist setTitle(Ljava/lang/String;)Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;
    .registers 6
    .param p1, "title"    # Ljava/lang/String;

    .line 199
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v1, 0x1020016

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v2, 0x110a0038

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 201
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 202
    iput-boolean v2, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mChronometerShow:Z

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mTitleShow:Z

    .line 204
    return-object p0
.end method
