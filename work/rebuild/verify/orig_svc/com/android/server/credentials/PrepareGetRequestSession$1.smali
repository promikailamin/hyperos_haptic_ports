.class public abstract synthetic Lcom/android/server/credentials/PrepareGetRequestSession$1;
.super Ljava/lang/Object;
.source "PrepareGetRequestSession.java"


# static fields
.field public static final synthetic $SwitchMap$com$android$server$credentials$ProviderSession$CredentialsSource:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 76
    invoke-static {}, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->values()[Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/credentials/PrepareGetRequestSession$1;->$SwitchMap$com$android$server$credentials$ProviderSession$CredentialsSource:[I

    :try_start_9
    sget-object v1, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->REMOTE_PROVIDER:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/android/server/credentials/PrepareGetRequestSession$1;->$SwitchMap$com$android$server$credentials$ProviderSession$CredentialsSource:[I

    sget-object v1, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->AUTH_ENTRY:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
