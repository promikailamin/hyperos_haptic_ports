.class Lmiui/util/font/MultiLangHelper$1;
.super Ljava/util/HashMap;
.source "MultiLangHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/font/MultiLangHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 49

    .line 48
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/util/HashMap;-><init>()V

    .line 49
    const-string v1, "az-AZ"

    const-string v2, "ms-MY"

    const-string v3, "bs-BA"

    const-string v4, "ca-ES"

    const-string v5, "cs-CZ"

    const-string v6, "da-DK"

    const-string v7, "de-DE"

    const-string v8, "et-EE"

    const-string v9, "en-AU"

    const-string v10, "en-IN"

    const-string v11, "en-GB"

    const-string v12, "en-US"

    const-string v13, "es-ES"

    const-string v14, "es-US"

    const-string v15, "eu-ES"

    const-string v16, "fr-FR"

    const-string v17, "gl-ES"

    const-string v18, "ha-NG"

    const-string v19, "hr-HR"

    const-string v20, "in-ID"

    const-string v21, "it-IT"

    const-string v22, "lv-LV"

    const-string v23, "lt-LT"

    const-string v24, "hu-HU"

    const-string v25, "mt-MT"

    const-string v26, "nl-NL"

    const-string v27, "nb-NO"

    const-string v28, "uz-UZ"

    const-string v29, "pl-PL"

    const-string v30, "pt-BR"

    const-string v31, "pt-PT"

    const-string v32, "ro-RO"

    const-string v33, "sq-AL"

    const-string v34, "sk-SK"

    const-string v35, "sl-SI"

    const-string v36, "fi-FI"

    const-string v37, "sv-SE"

    const-string v38, "vi-VN"

    const-string v39, "tr-TR"

    const-string v40, "el-GR"

    const-string v41, "be-BY"

    const-string v42, "bg-BG"

    const-string v43, "kk-KZ"

    const-string v44, "mk-MK"

    const-string v45, "ru-RU"

    const-string v46, "sr-RS"

    const-string v47, "uk-UA"

    filled-new-array/range {v1 .. v47}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "/system/fonts/MiSansLatinVF.ttf"

    invoke-virtual {v0, v2, v1}, Lmiui/util/font/MultiLangHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "zh-CN"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "/system/fonts/MiSansVF.ttf"

    invoke-virtual {v0, v2, v1}, Lmiui/util/font/MultiLangHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "ne-IN"

    const-string v2, "ne-NP"

    const-string v3, "mr-IN"

    const-string v4, "hi-IN"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "/system/fonts/MiSansDevanagariVF.ttf"

    invoke-virtual {v0, v2, v1}, Lmiui/util/font/MultiLangHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v3, "ur-IN"

    const-string v4, "ur-IN-u-nu-latn"

    const-string v5, "ur-PK"

    const-string v6, "ur-PK-u-nu-arabext"

    const-string v7, "ar-EG"

    const-string v8, "ar-EG-u-nu-latn"

    const-string v9, "fa-IR"

    const-string v10, "fa-IR-u-nu-latn"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "/system/fonts/MiSansArabicVF.ttf"

    invoke-virtual {v0, v2, v1}, Lmiui/util/font/MultiLangHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "zh-TW"

    const-string v2, "zh-HK"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "/system/fonts/MiSansTCVF.ttf"

    invoke-virtual {v0, v2, v1}, Lmiui/util/font/MultiLangHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v1, "lo-LA"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "/system/fonts/MiSansLaoVF.ttf"

    invoke-virtual {v0, v2, v1}, Lmiui/util/font/MultiLangHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "th-TH"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "/system/fonts/MiSansThaiVF.ttf"

    invoke-virtual {v0, v2, v1}, Lmiui/util/font/MultiLangHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v1, "km-KH"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "/system/fonts/MiSansKhmerVF.ttf"

    invoke-virtual {v0, v2, v1}, Lmiui/util/font/MultiLangHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v1, "my-MM"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "/system/fonts/MiSansMyanmarVF.ttf"

    invoke-virtual {v0, v2, v1}, Lmiui/util/font/MultiLangHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v1, "as-IN"

    const-string v2, "bn-IN"

    const-string v3, "bn-BD"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "/system/fonts/MiSansBengaliVF.ttf"

    invoke-virtual {v0, v2, v1}, Lmiui/util/font/MultiLangHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v1, "pa-IN"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "/system/fonts/MiSansGurmukhiVF.ttf"

    invoke-virtual {v0, v2, v1}, Lmiui/util/font/MultiLangHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "gu-IN"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "/system/fonts/MiSansGujaratiVF.ttf"

    invoke-virtual {v0, v2, v1}, Lmiui/util/font/MultiLangHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method
