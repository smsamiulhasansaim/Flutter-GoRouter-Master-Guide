# Flutter-GoRouter-Master-Guide

```markdown

## বৈশিষ্ট্যসমূহ (Features)

- **GoRouter Navigation:** ডিক্লারেটিভ রাউটিং সিস্টেম (Next.js স্টাইল)।
- **Clean UI:** মডার্ন এবং মিনিমাল ইউজার ইন্টারফেস।
- **Modular Structure:** কোড ম্যানেজ করার জন্য আলাদা রাউটার এবং স্ক্রিন ফোল্ডার।
- **Responsive Design:** মোবাইল এবং ট্যাবলেটের জন্য উপযোগী।

## 📂 প্রোজেক্ট স্ট্রাকচার (Project Structure)

```text
lib/
├── core/
│   └── router.dart      # GoRouter কনফিগারেশন (App Routes)
├── screen/
│   ├── login.dart       # লগইন পেজ
│   ├── signup.dart      # সাইন আপ পেজ
│   └── home.dart        # ড্যাশবোর্ড বা হোম পেজ
└── main.dart            # অ্যাপের এন্ট্রি পয়েন্ট
```

## 🛠️ টেকনোলজি স্ট্যাক (Tech Stack)

**Framework:**[Flutter](https://flutter.dev)
**Routing:**[GoRouter](https://pub.dev/packages/go_router) 

## সেটআপ এবং ইনস্টলেশন (Setup)

১. প্রোজেক্টটি ক্লোন করুন:
   ```bash
   git clone [https://github.com/smsamiulhasansaim/Flutter-GoRouter-Master-Guide]
   ```

২. প্রয়োজনীয় প্যাকেজগুলো ইনস্টল করুন:
   ```bash
   flutter pub get
   ```

৩. ইনভায়রনমেন্ট ভেরিয়েবল সেটআপ করুন (যদি থাকে):
   ```bash
   $env:Path += ";D:\flutter\bin"  # উইন্ডোজের জন্য
   ```

৪. অ্যাপটি রান করুন:
   ```
   bash
   flutter run
   ```

## রাউটিং গাইড (Routing Guide)

এই প্রোজেক্টে নেভিগেশনের জন্য নিচের কমান্ডগুলো ব্যবহার করা হয়েছে:

- **নতুন পেজে যাওয়া:** `context.push('/home')`
- **পেজ রিপ্লেস করা:** `context.go('/home')` (লগইনের পর সেরা)
- **ব্যাক করা:** `context.pop()`

## 📝 নোট (Notes for Dev)

> আপনি যদি Next.js থেকে এসে থাকেন, তবে মনে রাখবেন এখানে `context.go()` অনেকটা `router.replace()` এর মতো কাজ করে, যা হিস্ট্রি ক্লিন করে দেয়।

## 🤝 অবদান (Contribution)

আপনি যদি এই প্রোজেক্টে অবদান রাখতে চান, তবে দয়া করে একটি Pull Request পাঠান অথবা ইস্যু সেকশনে আপনার মতামত জানান।

Developed with ❤️ by [S M Samiul Hasan](https://github.com/smsamiulhasansaim)
