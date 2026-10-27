.class Lcom/android/server/notification/PreferencesHelper$Delegate;
.super Ljava/lang/Object;
.source "PreferencesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/PreferencesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Delegate"
.end annotation


# static fields
.field static final DEFAULT_ENABLED:Z = true

.field static final DEFAULT_USER_ALLOWED:Z = true


# instance fields
.field mEnabled:Z

.field mPkg:Ljava/lang/String;

.field mUid:I

.field mUserAllowed:Z


# direct methods
.method constructor <init>(Ljava/lang/String;IZZ)V
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enabled"    # Z
    .param p4, "userAllowed"    # Z

    .line 2733
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2729
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUid:I

    .line 2730
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    .line 2731
    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    .line 2734
    iput-object p1, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mPkg:Ljava/lang/String;

    .line 2735
    iput p2, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUid:I

    .line 2736
    iput-boolean p3, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    .line 2737
    iput-boolean p4, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    .line 2738
    return-void
.end method


# virtual methods
.method public isAllowed(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2741
    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    const/16 v1, -0x2710

    if-ne p2, v1, :cond_8

    goto :goto_1e

    .line 2744
    :cond_8
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget v1, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUid:I

    if-ne p2, v1, :cond_1d

    iget-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    if-eqz v1, :cond_1d

    iget-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    if-eqz v1, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    return v0

    .line 2742
    :cond_1e
    :goto_1e
    return v0
.end method
