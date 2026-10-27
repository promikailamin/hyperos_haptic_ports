.class Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;
.super Ljava/lang/Object;
.source "XSpaceResolverActivityHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/securityspace/XSpaceResolverActivityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResolverActivityRunner"
.end annotation


# instance fields
.field private blacklist mActivity:Landroid/app/Activity;

.field private blacklist mAimPackageName:Ljava/lang/String;

.field private blacklist mAimUserId:I

.field private blacklist mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

.field private blacklist mAlwaysOption:Landroid/widget/CheckBox;

.field private blacklist mAskType:I

.field private blacklist mCallingPackage:Ljava/lang/String;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIconSize:I

.field private blacklist mIntent:Landroid/content/Intent;

.field private blacklist mKeyType:Ljava/lang/String;

.field private blacklist mOnClickListener:Landroid/view/View$OnClickListener;

.field private blacklist mOriginalIntent:Landroid/content/Intent;

.field private blacklist mRootView:Landroid/view/View;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActivity(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAimUserId(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)I
    .registers 1

    iget p0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimUserId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAlwaysOption(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)Landroid/widget/CheckBox;
    .registers 1

    iget-object p0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAlwaysOption:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAskType(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)I
    .registers 1

    iget p0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAskType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyType(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mKeyType:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAimUserId(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;I)V
    .registers 2

    iput p1, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimUserId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAskType(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;I)V
    .registers 2

    iput p1, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAskType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mforward(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->forward(I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/Activity;Landroid/content/Intent;Lcom/android/internal/app/AlertController$AlertParams;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "alertParams"    # Lcom/android/internal/app/AlertController$AlertParams;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimUserId:I

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAskType:I

    .line 139
    new-instance v0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$2;

    invoke-direct {v0, p0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$2;-><init>(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)V

    iput-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 77
    iput-object p1, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mActivity:Landroid/app/Activity;

    .line 78
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mIntent:Landroid/content/Intent;

    .line 80
    iput-object p3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 81
    return-void
.end method

.method private blacklist forward(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 154
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mOriginalIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.picked_user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mOriginalIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Lmiui/securityspace/CrossUserUtilsCompat;->startActivityAsCaller(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    .line 156
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 157
    return-void
.end method

.method private blacklist getAppIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 182
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lmiui/securityspace/CrossUserUtils;->getOriginalAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private blacklist loadItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .registers 12
    .param p1, "appId"    # I
    .param p2, "iconDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "label"    # Ljava/lang/CharSequence;

    .line 160
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 161
    .local v0, "app":Landroid/widget/LinearLayout;
    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 162
    .local v1, "icon":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 163
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mIconSize:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 164
    const v3, 0x1020014

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 165
    .local v3, "text":Landroid/widget/TextView;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMinLines(I)V

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, "iconContentDescription":Ljava/lang/String;
    const v5, 0x110a0015

    if-ne p1, v5, :cond_60

    .line 168
    iget-object v5, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mContext:Landroid/content/Context;

    invoke-static {v5, p2}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 169
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mActivity:Landroid/app/Activity;

    const v7, 0x110f041b

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 171
    :cond_60
    const v5, 0x1020015

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v5, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 175
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    const/high16 v5, 0x41300000    # 11.0f

    const/4 v6, 0x2

    invoke-virtual {v3, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 177
    iget-object v5, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x1106006c

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 179
    return-void
.end method

.method private static blacklist startXSpaceServiceAsUser(Landroid/content/Context;IILjava/lang/String;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "askType"    # I
    .param p2, "mAimUserId"    # I
    .param p3, "mAimPackageName"    # Ljava/lang/String;

    .line 207
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 208
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "param_intent_key_has_extra"

    const-string v2, "param_intent_value_has_extra"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string v1, "param_intent_key_default_asktype"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    const-string v1, "package_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v1, "com.miui.securitycore/com.miui.xspace.service.XSpaceService"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 213
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 214
    return-void
.end method


# virtual methods
.method public blacklist getAppLabel()Ljava/lang/CharSequence;
    .registers 6

    .line 186
    const/4 v0, 0x0

    .line 188
    .local v0, "label":Ljava/lang/CharSequence;
    :try_start_1
    iget-object v1, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 189
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 190
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_1c

    .line 191
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 192
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_1c

    .line 193
    invoke-virtual {v3, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_18} :catch_1d

    move-object v0, v4

    .line 194
    if-eqz v0, :cond_1c

    .line 195
    return-object v0

    .line 201
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1c
    goto :goto_21

    .line 199
    :catch_1d
    move-exception v1

    .line 200
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 202
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_21
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimPackageName:Ljava/lang/String;

    .line 203
    return-object v0
.end method

.method public blacklist needShowDefaultSettingGuide()Z
    .registers 3

    .line 217
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mContext:Landroid/content/Context;

    const-string v1, "key_default_guide_times"

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$XSpace;->getGuideNotificationTimes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist test-api run()V
    .registers 6

    .line 85
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.xspace_resolver_activity_original_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mOriginalIntent:Landroid/content/Intent;

    .line 86
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.xspace_resolver_activity_aim_package"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimPackageName:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mOriginalIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz v0, :cond_c6

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_c6

    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mOriginalIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c6

    .line 88
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mOriginalIntent:Landroid/content/Intent;

    const-string v2, "miui.intent.extra.xspace_resolver_activity_calling_package"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mCallingPackage:Ljava/lang/String;

    .line 89
    const-string v2, "com.miui.voiceassist"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mCallingPackage:Ljava/lang/String;

    const-string v2, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    goto :goto_57

    .line 92
    :cond_4a
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mOriginalIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mKeyType:Ljava/lang/String;

    goto :goto_74

    .line 90
    :cond_57
    :goto_57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mKeyType:Ljava/lang/String;

    .line 95
    :goto_74
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mKeyType:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/provider/MiuiSettings$XSpace;->getAskType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAskType:I

    .line 96
    if-eqz v0, :cond_c6

    .line 97
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mOriginalIntent:Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v0, v2}, Lmiui/securityspace/XSpaceIntentCompat;->prepareToLeaveUser(Landroid/content/Intent;I)V

    .line 98
    iget v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAskType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_94

    .line 99
    move v0, v1

    goto :goto_96

    .line 100
    :cond_94
    const/16 v0, 0x3e7

    :goto_96
    iput v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimUserId:I

    .line 101
    invoke-virtual {p0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->needShowDefaultSettingGuide()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 102
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mContext:Landroid/content/Context;

    iget v2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAskType:I

    iget-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimPackageName:Ljava/lang/String;

    invoke-static {v0, v2, v1, v3}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->startXSpaceServiceAsUser(Landroid/content/Context;IILjava/lang/String;)V

    .line 104
    :cond_a7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Direct to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimUserId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "XSpaceResolverActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimUserId:I

    invoke-direct {p0, v0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->forward(I)V

    .line 109
    :cond_c6
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 110
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mActivity:Landroid/app/Activity;

    const v4, 0x110f041c

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 112
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x110c0035

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mRootView:Landroid/view/View;

    .line 113
    iget-object v2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 114
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 115
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    new-instance v2, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$1;

    invoke-direct {v2, p0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$1;-><init>(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)V

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 122
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 123
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v2

    iput v2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mIconSize:I

    .line 125
    iget-object v2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mOriginalIntent:Landroid/content/Intent;

    if-eqz v2, :cond_130

    iget-object v2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimPackageName:Ljava/lang/String;

    if-eqz v2, :cond_130

    .line 126
    invoke-direct {p0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 127
    .local v2, "iconDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->getAppLabel()Ljava/lang/CharSequence;

    move-result-object v3

    .line 128
    .local v3, "label":Ljava/lang/CharSequence;
    const v4, 0x110a0014

    invoke-direct {p0, v4, v2, v3}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->loadItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 129
    const v4, 0x110a0015

    invoke-direct {p0, v4, v2, v3}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->loadItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 132
    .end local v2    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "label":Ljava/lang/CharSequence;
    :cond_130
    iget-object v2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mRootView:Landroid/view/View;

    const v3, 0x110a0007

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAlwaysOption:Landroid/widget/CheckBox;

    .line 133
    if-eqz v2, :cond_153

    sget-object v2, Landroid/provider/MiuiSettings$XSpace;->sSupportDefaultSettingApps:Ljava/util/ArrayList;

    iget-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mKeyType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_153

    .line 134
    iget-object v2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAlwaysOption:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 135
    iget-object v2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAlwaysOption:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 137
    :cond_153
    return-void
.end method
