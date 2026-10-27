.class public Lcom/android/internal/app/LocalePickerStubImpl;
.super Ljava/lang/Object;
.source "LocalePickerStubImpl.java"

# interfaces
.implements Lcom/android/internal/app/LocalePickerStub;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addLocaleLanguages(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 22
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/internal/app/LocalePickerInjector;->addLocaleLanguages(Ljava/util/List;)V

    .line 23
    return-void
.end method

.method public blacklist sortLocaleInfos([Lcom/android/internal/app/LocalePicker$LocaleInfo;Landroid/content/Context;)V
    .registers 3
    .param p1, "localeInfoArray"    # [Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .param p2, "context"    # Landroid/content/Context;

    .line 17
    invoke-static {p1, p2}, Lcom/android/internal/app/LocalePickerInjector;->sortLocaleInfos([Lcom/android/internal/app/LocalePicker$LocaleInfo;Landroid/content/Context;)V

    .line 18
    return-void
.end method
