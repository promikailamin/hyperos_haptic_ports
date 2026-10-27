.class public interface abstract Lcom/android/internal/app/LocalePickerStub;
.super Ljava/lang/Object;
.source "LocalePickerStub.java"


# static fields
.field public static final blacklist sInstance:Lcom/android/internal/app/LocalePickerStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 13
    const-class v0, Lcom/android/internal/app/LocalePickerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocalePickerStub;

    sput-object v0, Lcom/android/internal/app/LocalePickerStub;->sInstance:Lcom/android/internal/app/LocalePickerStub;

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/app/LocalePickerStub;
    .registers 1

    .line 16
    sget-object v0, Lcom/android/internal/app/LocalePickerStub;->sInstance:Lcom/android/internal/app/LocalePickerStub;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist addLocaleLanguages(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist sortLocaleInfos([Lcom/android/internal/app/LocalePicker$LocaleInfo;Landroid/content/Context;)V
.end method
