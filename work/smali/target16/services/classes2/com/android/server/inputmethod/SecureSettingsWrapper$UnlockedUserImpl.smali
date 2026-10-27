.class public Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;
.super Ljava/lang/Object;
.source "SecureSettingsWrapper.java"

# interfaces
.implements Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/content/ContentResolver;)V
    .registers 3

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput p1, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->mUserId:I

    .line 164
    iput-object p2, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public getInt(Ljava/lang/String;I)I
    .registers 4

    .line 192
    iget-object v0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->mUserId:I

    invoke-static {v0, p1, p2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 178
    iget-object v0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->mUserId:I

    invoke-static {v0, p1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b

    return-object p0

    :cond_b
    return-object p2
.end method

.method public putInt(Ljava/lang/String;I)V
    .registers 4

    .line 185
    iget v0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->mUserId:I

    invoke-static {p1, v0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->-$$Nest$smgetUserIdForClonedSettings(Ljava/lang/String;I)I

    move-result v0

    .line 186
    iget-object p0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 170
    iget v0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->mUserId:I

    invoke-static {p1, v0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->-$$Nest$smgetUserIdForClonedSettings(Ljava/lang/String;I)I

    move-result v0

    .line 171
    iget-object p0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method
