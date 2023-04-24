INSERT INTO public.users (display_name, email, handle, cognito_user_id)
VALUES
  ('mary-ejike', 'genejike2014@gmail.com', 'greatful','MOCK'),
  ('Andrew Bayko', 'genevievejike256@gmail.com', 'bayko','MOCK'),
  ('Londo Mollari', 'lmollari@centari.com', 'londo','MOCK');
INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle='greatful' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )