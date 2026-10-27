.class public final Lcom/android/server/locales/AppLocaleChangedAtomRecord;
.super Ljava/lang/Object;
.source "AppLocaleChangedAtomRecord.java"


# instance fields
.field final mCallingUid:I

.field mNewLocales:Ljava/lang/String;

.field mPrevLocales:Ljava/lang/String;

.field mStatus:I

.field mTargetUid:I


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "callingUid"    # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mTargetUid:I

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mNewLocales:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mPrevLocales:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mStatus:I

    .line 35
    iput p1, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mCallingUid:I

    .line 36
    return-void
.end method


# virtual methods
.method setNewLocales(Ljava/lang/String;)V
    .registers 2
    .param p1, "newLocales"    # Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mNewLocales:Ljava/lang/String;

    .line 40
    return-void
.end method

.method setPrevLocales(Ljava/lang/String;)V
    .registers 2
    .param p1, "prevLocales"    # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mPrevLocales:Ljava/lang/String;

    .line 48
    return-void
.end method

.method setStatus(I)V
    .registers 2
    .param p1, "status"    # I

    .line 51
    iput p1, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mStatus:I

    .line 52
    return-void
.end method

.method setTargetUid(I)V
    .registers 2
    .param p1, "targetUid"    # I

    .line 43
    iput p1, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mTargetUid:I

    .line 44
    return-void
.end method
